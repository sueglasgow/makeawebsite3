# Publish your site to github pages

# needs tweaked for fully static sites in which case we can copy contents to a folder we pass as dist
# user must have pushed to a repo they own before doing this

printf "\n🚨 You must push your code to a repo you own before publishing\n👈 Use the Source Control section on the left\n✏️ Enter a message and Commit your code\n🌳 Go ahead and publish your project to a new GitHub repo\n\n🚀 Done all that and ready to proceed? (y/n)? "
read answer

pubdir=""
if [ "$answer" != "${answer#[Yy]}" ] ; then 
  npm run build || rsync -a --exclude='.devcontainer/' --exclude='.helpers/' --exclude='dist/' ../ ../dist/
  if [ -d "dist" ]; then
  pubdir="dist"
  else 
    if [ -d "public" ]; then
    pubdir="public"
    else
      if [ -d "out" ]; then
      pubdir="out"
      else
        if [ -d "_site" ]; then
        pubdir="_site"
        else
          if [ -d "build" ]; then
          pubdir="build"
          else
            if [ -d "docs" ]; then
            pubdir="docs"
            fi
          fi
        fi
      fi
    fi
  fi
  if [ -n "$pubdir" ]; then
    npx --yes --package=gh-pages gh-pages -d "$pubdir"
    # read success or fail
    if [ $? -eq 0 ]; then
      IFS='/' read -ra repo <<< "$GITHUB_REPOSITORY"
      ghio=$(echo "${repo[0]}.github.io")
      user=$( echo "$ghio" | tr '[:upper:]' '[:lower:]' )
      address="https://$user/${repo[1]}"
      printf "\n🎉 Your site may take a few minutes to deploy fully\n🏡 It's address will be something like $address \n⚙️ You'll find more details at your GitHub repo > Settings > Pages\n"
      exit 0
    else
      printf "\n🙈 Oops – something went wrong, maybe check your repo is set up?\n"
      exit 1
    fi
else
    exit 1
  fi
else
    exit 1
fi

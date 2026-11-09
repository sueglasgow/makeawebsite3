#!/bin/bash
# This script prompts the user for input and runs a prompt

if [[ -f "package.json" ]] || find -maxdepth 1 -type f -name '*.html' -print -quit | grep -q .; then
  npm run start 2>/dev/null || npx --yes serve
else
  printf "\n🚧 This action will prompt copilot to generate a website designed for learning\n❓ What kind of website would you like? e.g. a blog about cats...\n✏️  Type X to cancel or enter if you want copilot to choose a website for you!\n"
  read answer
  if [ "$answer" == "${answer#[Xx]}" ] ; then 
    userinfo="The user did not provide a site theme"
      if [ ! -z "$answer" -a "$answer" != "" -a "$answer" != " " ]; then
          userinfo="The user chose the following theme: $answer"
      fi
    prompt="$userinfo\n $(<.helpers/prompt.md)"
    copilot --prompt "$prompt" --allow-all
    npm run start || npx --yes serve
  fi
fi
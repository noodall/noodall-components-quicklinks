# Noodall Quicklinks Component

A simple list of links component for Noodall

## Install

Add to your `Gemfile`

    gem 'noodall-components-quicklinks', :git => 'git@github.com:noodall/noodall-components-quicklinks.git'

Run `bundle install`

    bundle install

## Configuration

Noodall Quicklinks adds a `QuickLinks` component. Add it to your slots.

In `config/initializers/noodall.rb`

    Noodall::Node.slot :large, QuickLinks
    Noodall::Node.slot :small, QuickLinks

You can now add `QuickLinks` components to your Nodes.


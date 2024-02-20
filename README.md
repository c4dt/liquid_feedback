# Liquid_Feedback

Creating a docker out of file:///Users/ligasser/Programming/C4DT/liquid_feedback/INSTALL.html

## Build

```bash
docker-compose build
```

## Running it

Copy the file `myconfig.lua.example` to `myconfig.lua` and adjust it to your needs.
Then run the docker file:

```bash
docker-compose up
```

Now you can open http://localhost:8080

Have fun!

# First steps

- sign up as an admin using the invitation code `sesam`
- Go to `system settings` in the bottom left and create the following:
  - new policy that defines how new issues are handled
  - new unit
  - new subject area and put the created policy as allowed policy
  - search for your username and click on it
    - Add yourself to the unit created
- Go back to the home page
- in 'All units' choose the unit you created
- in 'All subject areas' choose the subject area you created
- Create a 'New issue'

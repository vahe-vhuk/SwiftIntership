# Development of an Online Meeting Application Simulation

## Objective: 
Create a simulated version of an online meeting application (such as Google Meet, Zoom, Microsoft Teams, etc.) featuring a layout engine for participant join and leave actions.

## Requirements:
1. Single Screen Layout: The application should consist of a single screen with two buttons at the bottom: 'Add' and 'Remove'.
2. Participant Management:
   - Add Button: On clicking 'Add', sequentially add participants to the screen, with one participant per click.
   - Remove Button: Clicking 'Remove' sequentially should remove participants, starting with the most recently added, with one participant per click.
   - Participant Interaction: Tapping on any participant's area should remove them from the screen.
3. Animations: Both participant addition and removal should be accompanied by animations.
4. Dynamic Rearrangement: Remaining participants should be dynamically rearranged following any addition or removal, with accompanying animations.
5. Participant Layout: Arrange participant positions according to a predefined schema.
6. Participant Limit: The maximum number of participants allowed is 10.

## Additional Information:
- Each participant’s area is represented by a standard UIView (iOS), assigned a unique identifier.
- You’re free to keep a configuration file like a JSON file and hardcode every position coordinate there. Then read coordinates and render to the screen.
- Keep a consistent spatial distance between participants as per your design.
- To avoid compilation issues, use the latest version of your XCode IDE.
- No external libraries are allowed; rely solely on native libraries of the environment.
- Don’t use layout constraints.
- Once a participant is added to the screen, their unique identifier must remain constant throughout their lifecycle in the application. Reordering participants should not change their identifiers.

## Evaluation Criteria:
- The application will be excluded from evaluation if it fails to compile.
- Failure to adhere to the layout schema for any number of participants will result in a negative assessment.
- Any programming errors encountered during operation will be considered a fault.
- Absence of animations will negatively impact the evaluation.
- Flexibility and configurability of the system will be advantageous, allowing schema changes without altering the program logic.
- Clean and organized code will be positively evaluated.


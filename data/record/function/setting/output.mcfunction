#輸出
$execute if score #$(name) rp_core matches 1 run return run tellraw @s [{object: "atlas", sprite: "item/$(item)"}, {text: "$(text): ", hover_event: {action: "show_text", value: "$(description)"}}, {translate: "options.on", color: "green", click_event: {action: "run_command", command: "/trigger rp_setting set $(value)"}}]

$tellraw @s [{object: "atlas", sprite: "item/$(item)"}, {text: "$(text): ", hover_event: {action: "show_text", value: "$(description)"}}, {translate: "options.off", color: "red", click_event: {action: "run_command", command: "/trigger rp_setting set $(value)"}}]
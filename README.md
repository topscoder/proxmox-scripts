# proxmox-scripts

While running some Proxmox nodes I came across some issues like unresponsive containers or images. 
In some cases a `pct unlock <id>` or `lxt unlock <id>` just doesn't work. 
A reboot – like in the Windows world – of the entire machine would probably solve the hanging containers,
But if you run only one node at that time, you want to minimize downtime as much as possible.

I've created some scripts to be able to use these commands when I need them.

Force restart Proxmox services
---

```bash
sh restart-services.sh
```

Unlock VM
---

If Proxmox can't access the lock file, you can't do anything with that machine. You want to force release the lock.

```bash
sh unlock-vm.sh
```

Credits go to dannyda.com as author for this script.

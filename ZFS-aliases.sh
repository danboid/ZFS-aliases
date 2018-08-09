# ZFS aliases
# Copy the below aliases into your ~/.bashrc file (Linux users)
# Replace 'backup02' with your pool name and 'media' with the dataset you wish to snapshot

# Export (unmount) pool
alias ze='sudo zpool export backup02'

# Import (mount) pool
alias zi='sudo zpool import -f backup02'

# List all datasets and snapshots
alias zl='zfs list -t all'

# Show ZFS pool status 
alias zp='zpool status'

# Create new date and timestamped snapshot
alias zs='sudo zfs snapshot -r backup02/media@`date +%d-%m-%Y-%T`'




# Alternately, copy the below aliases into your ~/.cshrc if using tcsh or csh (FreeBSD users)

# Export (unmount) pool
alias ze	 sudo zpool export backup02

# Import (mount) pool
alias zi	 sudo zpool import -f backup02

# List all datasets and snapshots
alias zl	 zfs list -t all

# Show ZFS pool status 
alias zp	 zpool status

# Create new date and timestamped snapshot, backup pool
alias zsb	 sudo zfs snapshot -r backup02/media@`date +%d-%m-%Y-%T`

# Create new date and timestamped snapshot, data pool
alias zsd	 sudo zfs snapshot -r data/media@`date +%d-%m-%Y-%T`

# Create a new boot environment
alias zc	 sudo beadm create `date +%d-%m-%Y-%H%M%S-``freebsd-version`-


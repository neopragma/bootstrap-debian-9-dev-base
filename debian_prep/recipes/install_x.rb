# Install X Windows client and server and openbox window manager.

package 'xauth'
package 'xorg'
package 'openbox'
package 'obconf'
package 'obmenu'
package 'lxterminal'
package 'lightdm'

bash 'copy openbox configuration files to user dev' do 
  code <<-EOF
    mkdir -p /home/dev/.config/openbox
    cp -r /root/bootstrap-debian-9-dev-base/openbox/* /home/dev/.config/openbox/.
    chown -R dev /home/dev/.config/openbox
    chgrp -R dev /home/dev/.config/openbox
  EOF
end 

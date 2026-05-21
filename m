Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Bu7KNETD2otFAYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:49 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA205A70D2
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4mavpJlQwHHEOZEtogdET/kFb2reXkv5P9HJoTTubak=; b=PzFZnrHpfmhVpLozCKBtL8uV3I
	nYNrH7VMR0xC7ODsWq04N7krT4EX9b3tk2WSoHw8PMoI3rWVnLIIklY3SEVcxW+gCP1TCnzv24upH
	5wGCgWuVW8MVS54y9lAf/E52NuUfhO9qpAXRWwy6fccSgNs7GaBNUQdOw4alC1O+nVgU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wQ4CV-0002gv-99;
	Thu, 21 May 2026 14:16:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kees@kernel.org>) id 1wQ3Ww-0003pG-Nj
 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WkbMJ1kva7fFZX4oxS1CxXqVBFJ5ToOFqVFmlHbaMYc=; b=Wav7xZATjLxKlRq4A/DkxJH4a6
 35ks0VeDRfCr1N8k6/rtLDgpE26eSC+bjEg5qLwGMbxqxIDBrUiHZAfWFXIMH6BU6nDZXF4kZH5Fk
 Kmt2nPyJkeHi7EnTnpp2K+cRB/8q8dL8FzngYhbORb7BdNeqG2FdawJtQhPw/X/5OgOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WkbMJ1kva7fFZX4oxS1CxXqVBFJ5ToOFqVFmlHbaMYc=; b=TREDh660/hZm1v7Hp/2mf9VV4o
 lOg2s/mDUOwU11Yl1JhZF0Lg7sNIfq04n6gc/GxJG1tYlEpplTIXsW6GT7p8TtYjgbYC+pr7spr7+
 dPJHeLCSJKrFYff9wzsjlThVpsT32F4XYjoOBJSoq/tt1+E09ZvyuBgBbiqb0npkJuqk=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wQ3Wu-0004Oq-Pl for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 606F444655;
 Thu, 21 May 2026 13:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E54D1F00A3B;
 Thu, 21 May 2026 13:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1779370407;
 bh=WkbMJ1kva7fFZX4oxS1CxXqVBFJ5ToOFqVFmlHbaMYc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Lw5blbYvMk8PRhC5KoNjHBHRBX0T5Gfcp8mEYuOFputrdtbZUDXOGpP07tqwsgJHC
 frNpNfohkI9rbWm9eFq6oZlWCXsFAZd6/3Mrkgo9/pAOeOh+uzJyA+HjnWs9zHkUbU
 UBU9O9dUeKHdq2GCZ7l5pLoAnCz0uaYnAEAntTF66VI2DEtkog0OG8RCszdbU1fxjY
 ueW9Dro2dTHgXAxL0fZH0B9qqAg3XxZC/bCEgfI9DG3MoIh9RL7GhhlD6uPq+lt1yB
 /6+2MZFnU7CWTV3oQ2g0EtOXw1fzHEzV2g+IUI+NGClWT/0elrTvS3xmtcGd27zPR6
 abTTA5WoLFK6g==
To: Luis Chamberlain <mcgrof@kernel.org>
Date: Thu, 21 May 2026 06:33:23 -0700
Message-Id: <20260521133326.2465264-10-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260521133315.work.845-kees@kernel.org>
References: <20260521133315.work.845-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=29233; i=kees@kernel.org;
 h=from:subject; bh=9dN4LEhYW6MNEC9rNQKQkNKlHPHq18Nw1Stmxbw4WnA=;
 b=owGbwMvMwCVmps19z/KJym7G02pJDFn8nIu/r2P8Iu3xW1S+R/HnTgPhm9MFd2qpzlZoc7xRf
 m5aYXdfRykLgxgXg6yYIkuQnXuci8fb9nD3uYowc1iZQIYwcHEKwEQ8rjEy/FVUEHDMkRbTf1PG
 UbDo2/p9tleLb2kYyfqxXlPccu2gBSPDo4qE3Ssaa3IUJi+c+fb0vLu1942OVH4//Mw22VbqorU
 cOwA=
X-Developer-Key: i=kees@kernel.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Convert struct kernel_param_ops .get callbacks from legacy
 "char *" to "struct seq_buf *". Since seq_buf_printf() will return -1 on
 overflow, and struct kernel_param_ops .get callbacks are expected to truncate
 without error, we must ignore the return value from seq_buf_print() and always
 re [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wQ3Wu-0004Oq-Pl
X-Mailman-Approved-At: Thu, 21 May 2026 14:16:35 +0000
Subject: [Openipmi-developer] [PATCH 10/11] treewide: Manually convert
 custom kernel_param_ops .get callbacks
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
From: Kees Cook via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Kees Cook <kees@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, dri-devel@lists.freedesktop.org,
 Pengpeng Hou <pengpeng@iscas.ac.cn>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 usb-storage@lists.one-eyed-alien.net, linux-arch@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 James Morris <jmorris@namei.org>, kasan-dev@googlegroups.com,
 Tvrtko Ursulin <tursulin@ursulin.net>, linux-acpi@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, Georgia Garcia <georgia.garcia@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-media@vger.kernel.org,
 Lukasz Luba <lukasz.luba@arm.com>, "Maciej W. Rozycki" <macro@orcam.me.uk>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Simona Vetter <simona@ffwll.ch>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Paul Moore <paul@paul-moore.com>, Leon Romanovsky <leon@kernel.org>,
 Frank Li <Frank.Li@kernel.org>, Gabriel Somlo <somlo@cmu.edu>,
 Len Brown <lenb@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Jason Baron <jbaron@akamai.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jim Cromie <jim.cromie@gmail.com>,
 Sean Christopherson <seanjc@google.com>, Thomas Gleixner <tglx@kernel.org>,
 Kees Cook <kees@kernel.org>, linux-pci@vger.kernel.org,
 Jason Wang <jasowang@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "David E. Box" <david.e.box@linux.intel.com>,
 Jiri Slaby <jirislaby@kernel.org>, linux-rdma@vger.kernel.org,
 Sami Tolvanen <samitolvanen@google.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Serge E. Hallyn" <serge@hallyn.com>, Marco Elver <elver@google.com>,
 Petr Pavlu <petr.pavlu@suse.com>, intel-gfx@lists.freedesktop.org,
 Corey Minyard <corey@minyard.net>, Borislav Petkov <bp@alien8.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Aaron Tomlin <atomlin@atomlin.com>, Hans de Goede <hansg@kernel.org>,
 kvm@vger.kernel.org, "Michael S. Tsirkin" <mst@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, "H. Peter Anvin" <hpa@zytor.com>,
 qemu-devel@nongnu.org, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, Daniel Gomez <da.gomez@kernel.org>,
 David Airlie <airlied@gmail.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-scsi@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 linux-security-module@vger.kernel.org,
 =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, linux-serial@vger.kernel.org,
 Zhang Rui <rui.zhang@intel.com>, Heiko Carstens <hca@linux.ibm.com>,
 apparmor@lists.ubuntu.com, virtualization@lists.linux.dev,
 linux-hardening@vger.kernel.org, Hannes Reinecke <hare@suse.de>,
 Benjamin Berg <benjamin.berg@intel.com>,
 Daniel Lezcano <daniel.lezcano@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Tiwei Bie <tiwei.btw@antgroup.com>, Dmitry Vyukov <dvyukov@google.com>,
 John Johansen <john.johansen@canonical.com>, netdev@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, Johannes Berg <johannes@sipsolutions.net>,
 linuxppc-dev@lists.ozlabs.org, linux-modules@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-6.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mcgrof@kernel.org,m:rafael@kernel.org,m:dri-devel@lists.freedesktop.org,m:pengpeng@iscas.ac.cn,m:srinivas.pandruvada@linux.intel.com,m:usb-storage@lists.one-eyed-alien.net,m:linux-arch@vger.kernel.org,m:bvanassche@acm.org,m:jgg@ziepe.ca,m:jmorris@namei.org,m:kasan-dev@googlegroups.com,m:tursulin@ursulin.net,m:linux-acpi@vger.kernel.org,m:stern@rowland.harvard.edu,m:linux-pm@vger.kernel.org,m:linux-um@lists.infradead.org,m:georgia.garcia@canonical.com,m:gregkh@linuxfoundation.org,m:linux-usb@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:akpm@linux-foundation.org,m:linux-media@vger.kernel.org,m:lukasz.luba@arm.com,m:macro@orcam.me.uk,m:dave.hansen@linux.intel.com,m:James.Bottomley@HansenPartnership.com,m:simona@ffwll.ch,m:xuanzhuo@linux.alibaba.com,m:paul@paul-moore.com,m:leon@kernel.org,m:Frank.Li@kernel.org,m:somlo@cmu.edu,m:lenb@kernel.org,m:gor@linux.ibm.com,m:jani.nikula@linux.intel.com,m:jbaron@akamai.com,m:bhelgaas@go
 ogle.com,m:jim.cromie@gmail.com,m:seanjc@google.com,m:tglx@kernel.org,m:kees@kernel.org,m:linux-pci@vger.kernel.org,m:jasowang@redhat.com,m:joonas.lahtinen@linux.intel.com,m:laurent.pinchart@ideasonboard.com,m:david.e.box@linux.intel.com,m:jirislaby@kernel.org,m:linux-rdma@vger.kernel.org,m:samitolvanen@google.com,m:ilpo.jarvinen@linux.intel.com,m:serge@hallyn.com,m:elver@google.com,m:petr.pavlu@suse.com,m:intel-gfx@lists.freedesktop.org,m:corey@minyard.net,m:bp@alien8.de,m:rodrigo.vivi@intel.com,m:openipmi-developer@lists.sourceforge.net,m:mchehab@kernel.org,m:martin.petersen@oracle.com,m:atomlin@atomlin.com,m:hansg@kernel.org,m:kvm@vger.kernel.org,m:mst@redhat.com,m:peterz@infradead.org,m:hpa@zytor.com,m:qemu-devel@nongnu.org,m:linux-mm@kvack.org,m:glider@google.com,m:da.gomez@kernel.org,m:airlied@gmail.com,m:anton.ivanov@cambridgegreys.com,m:linux-scsi@vger.kernel.org,m:richard@nod.at,m:x86@kernel.org,m:linux-security-module@vger.kernel.org,m:eperezma@redhat.com,m:mingo@redhat.co
 m,m:linux-serial@vger.kernel.org,m:rui.zhang@intel.com,m:hca@linux.ibm.com,m:apparmor@lists.ubuntu.com,m:virtualization@lists.linux.dev,m:linux-hardening@vger.kernel.org,m:hare@suse.de,m:benjamin.berg@intel.com,m:daniel.lezcano@kernel.org,m:andriy.shevchenko@linux.intel.com,m:tiwei.btw@antgroup.com,m:dvyukov@google.com,m:john.johansen@canonical.com,m:netdev@vger.kernel.org,m:vkoul@kernel.org,m:dmaengine@vger.kernel.org,m:pbonzini@redhat.com,m:johannes@sipsolutions.net,m:linuxppc-dev@lists.ozlabs.org,m:linux-modules@vger.kernel.org,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,iscas.ac.cn,linux.intel.com,lists.one-eyed-alien.net,vger.kernel.org,acm.org,ziepe.ca,namei.org,googlegroups.com,ursulin.net,rowland.harvard.edu,lists.infradead.org,canonical.com,linuxfoundation.org,linux-foundation.org,arm.com,orcam.me.uk,HansenPartnership.com,ffwll.ch,linux.alibaba.com,paul-moore.com,cmu.edu,linux.ibm.com,akamai.com,google.com,gmail.com,redhat.com,ideasonboard.com,hallyn.com,suse.com,minyard.net,alien8.de,intel.com,lists.sourceforge.net,oracle.com,atomlin.com,infradead.org,zytor.com,nongnu.org,kvack.org,cambridgegreys.com,nod.at,lists.ubuntu.com,lists.linux.dev,suse.de,antgroup.com,sipsolutions.net,lists.ozlabs.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_GT_50(0.00)[99];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[kees@kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,0xllx:email]
X-Rspamd-Queue-Id: CDA205A70D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert struct kernel_param_ops .get callbacks from legacy "char *" to
"struct seq_buf *".

Since seq_buf_printf() will return -1 on overflow, and struct
kernel_param_ops .get callbacks are expected to truncate without error,
we must ignore the return value from seq_buf_print() and always return 0
(as the length is calculated in the common dispatcher code).

No struct kernel_param_ops initializations need changing since
DEFINE_KERNEL_PARAM_OPS already routes the pointer to .get or .get_str
via _Generic based on the function signature, so converted callbacks
are automatically moved from the .get_str to the .get callback.

Signed-off-by: Kees Cook <kees@kernel.org>
---
 include/linux/dynamic_debug.h            |  8 ++-
 arch/um/drivers/vfio_kern.c              |  3 +-
 arch/um/drivers/virtio_uml.c             | 12 ++--
 drivers/acpi/button.c                    | 19 ++++--
 drivers/acpi/sysfs.c                     | 83 +++++++++++-------------
 drivers/char/ipmi/ipmi_watchdog.c        | 33 ++++------
 drivers/firmware/qemu_fw_cfg.c           | 34 +++++-----
 drivers/gpu/drm/i915/i915_mitigations.c  | 26 ++++----
 drivers/infiniband/ulp/srp/ib_srp.c      |  7 +-
 drivers/media/usb/uvc/uvc_driver.c       |  8 ++-
 drivers/pci/pcie/aspm.c                  | 17 +++--
 drivers/scsi/fcoe/fcoe_transport.c       | 22 +++----
 drivers/thermal/intel/intel_powerclamp.c | 14 ++--
 drivers/tty/hvc/hvc_iucv.c               | 18 ++---
 drivers/usb/storage/usb.c                | 20 +++---
 drivers/virtio/virtio_mmio.c             | 21 +++---
 lib/dynamic_debug.c                      | 10 ++-
 17 files changed, 178 insertions(+), 177 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index 05743900a116..999a25671b6a 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -334,8 +334,10 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 extern int ddebug_dyndbg_module_param_cb(char *param, char *val,
 					const char *modname);
 struct kernel_param;
+struct seq_buf;
 int param_set_dyndbg_classes(const char *instr, const struct kernel_param *kp);
-int param_get_dyndbg_classes(char *buffer, const struct kernel_param *kp);
+int param_get_dyndbg_classes(struct seq_buf *buffer,
+			     const struct kernel_param *kp);
 
 #else
 
@@ -352,9 +354,11 @@ static inline int ddebug_dyndbg_module_param_cb(char *param, char *val,
 }
 
 struct kernel_param;
+struct seq_buf;
 static inline int param_set_dyndbg_classes(const char *instr, const struct kernel_param *kp)
 { return 0; }
-static inline int param_get_dyndbg_classes(char *buffer, const struct kernel_param *kp)
+static inline int param_get_dyndbg_classes(struct seq_buf *buffer,
+					   const struct kernel_param *kp)
 { return 0; }
 
 #endif
diff --git a/arch/um/drivers/vfio_kern.c b/arch/um/drivers/vfio_kern.c
index fb7988dc5482..7c1119d0d9c1 100644
--- a/arch/um/drivers/vfio_kern.c
+++ b/arch/um/drivers/vfio_kern.c
@@ -623,7 +623,8 @@ static int uml_vfio_cmdline_set(const char *device, const struct kernel_param *k
 	return 0;
 }
 
-static int uml_vfio_cmdline_get(char *buffer, const struct kernel_param *kp)
+static int uml_vfio_cmdline_get(struct seq_buf *buffer,
+				const struct kernel_param *kp)
 {
 	return 0;
 }
diff --git a/arch/um/drivers/virtio_uml.c b/arch/um/drivers/virtio_uml.c
index f9ae745f4586..cea806540625 100644
--- a/arch/um/drivers/virtio_uml.c
+++ b/arch/um/drivers/virtio_uml.c
@@ -1379,23 +1379,21 @@ static int vu_cmdline_get_device(struct device *dev, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
-	char *buffer = data;
-	unsigned int len = strlen(buffer);
+	struct seq_buf *s = data;
 
-	snprintf(buffer + len, PAGE_SIZE - len, "%s:%d:%d\n",
-		 pdata->socket_path, pdata->virtio_device_id, pdev->id);
+	seq_buf_printf(s, "%s:%d:%d\n",
+		       pdata->socket_path, pdata->virtio_device_id, pdev->id);
 	return 0;
 }
 
-static int vu_cmdline_get(char *buffer, const struct kernel_param *kp)
+static int vu_cmdline_get(struct seq_buf *buffer, const struct kernel_param *kp)
 {
 	guard(mutex)(&vu_cmdline_lock);
 
-	buffer[0] = '\0';
 	if (vu_cmdline_parent_registered)
 		device_for_each_child(&vu_cmdline_parent, buffer,
 				      vu_cmdline_get_device);
-	return strlen(buffer) + 1;
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(vu_cmdline_param_ops, vu_cmdline_set,
diff --git a/drivers/acpi/button.c b/drivers/acpi/button.c
index dc064a388c23..31c624bebc65 100644
--- a/drivers/acpi/button.c
+++ b/drivers/acpi/button.c
@@ -715,19 +715,24 @@ static int param_set_lid_init_state(const char *val,
 	return 0;
 }
 
-static int param_get_lid_init_state(char *buf, const struct kernel_param *kp)
+static int param_get_lid_init_state(struct seq_buf *buf,
+				    const struct kernel_param *kp)
 {
-	int i, c = 0;
+	int i;
 
-	for (i = 0; i < ARRAY_SIZE(lid_init_state_str); i++)
+	for (i = 0; i < ARRAY_SIZE(lid_init_state_str); i++) {
 		if (i == lid_init_state)
-			c += sprintf(buf + c, "[%s] ", lid_init_state_str[i]);
+			seq_buf_printf(buf, "[%s] ", lid_init_state_str[i]);
 		else
-			c += sprintf(buf + c, "%s ", lid_init_state_str[i]);
+			seq_buf_printf(buf, "%s ", lid_init_state_str[i]);
+	}
 
-	buf[c - 1] = '\n'; /* Replace the final space with a newline */
+	/* Replace the final space with a newline. */
+	if (!seq_buf_has_overflowed(buf) && buf->len > 0 &&
+	    buf->buffer[buf->len - 1] == ' ')
+		buf->buffer[buf->len - 1] = '\n';
 
-	return c;
+	return 0;
 }
 
 module_param_call(lid_init_state,
diff --git a/drivers/acpi/sysfs.c b/drivers/acpi/sysfs.c
index 5247ed7e05cc..dff7cc7da8bf 100644
--- a/drivers/acpi/sysfs.c
+++ b/drivers/acpi/sysfs.c
@@ -89,53 +89,49 @@ static const struct acpi_dlevel acpi_debug_levels[] = {
 	ACPI_DEBUG_INIT(ACPI_LV_EVENTS),
 };
 
-static int param_get_debug_layer(char *buffer, const struct kernel_param *kp)
+static int param_get_debug_layer(struct seq_buf *buffer,
+				 const struct kernel_param *kp)
 {
-	int result = 0;
 	int i;
 
-	result = sprintf(buffer, "%-25s\tHex        SET\n", "Description");
+	seq_buf_printf(buffer, "%-25s\tHex        SET\n", "Description");
 
 	for (i = 0; i < ARRAY_SIZE(acpi_debug_layers); i++) {
-		result += sprintf(buffer + result, "%-25s\t0x%08lX [%c]\n",
-				  acpi_debug_layers[i].name,
-				  acpi_debug_layers[i].value,
-				  (acpi_dbg_layer & acpi_debug_layers[i].value)
-				  ? '*' : ' ');
+		seq_buf_printf(buffer, "%-25s\t0x%08lX [%c]\n",
+			       acpi_debug_layers[i].name,
+			       acpi_debug_layers[i].value,
+			       (acpi_dbg_layer & acpi_debug_layers[i].value)
+			       ? '*' : ' ');
 	}
-	result +=
-	    sprintf(buffer + result, "%-25s\t0x%08X [%c]\n", "ACPI_ALL_DRIVERS",
-		    ACPI_ALL_DRIVERS,
-		    (acpi_dbg_layer & ACPI_ALL_DRIVERS) ==
-		    ACPI_ALL_DRIVERS ? '*' : (acpi_dbg_layer & ACPI_ALL_DRIVERS)
-		    == 0 ? ' ' : '-');
-	result +=
-	    sprintf(buffer + result,
-		    "--\ndebug_layer = 0x%08X ( * = enabled)\n",
-		    acpi_dbg_layer);
+	seq_buf_printf(buffer, "%-25s\t0x%08X [%c]\n", "ACPI_ALL_DRIVERS",
+		       ACPI_ALL_DRIVERS,
+		       (acpi_dbg_layer & ACPI_ALL_DRIVERS) == ACPI_ALL_DRIVERS
+		       ? '*' : (acpi_dbg_layer & ACPI_ALL_DRIVERS) == 0
+		       ? ' ' : '-');
+	seq_buf_printf(buffer, "--\ndebug_layer = 0x%08X ( * = enabled)\n",
+		       acpi_dbg_layer);
 
-	return result;
+	return 0;
 }
 
-static int param_get_debug_level(char *buffer, const struct kernel_param *kp)
+static int param_get_debug_level(struct seq_buf *buffer,
+				 const struct kernel_param *kp)
 {
-	int result = 0;
 	int i;
 
-	result = sprintf(buffer, "%-25s\tHex        SET\n", "Description");
+	seq_buf_printf(buffer, "%-25s\tHex        SET\n", "Description");
 
 	for (i = 0; i < ARRAY_SIZE(acpi_debug_levels); i++) {
-		result += sprintf(buffer + result, "%-25s\t0x%08lX [%c]\n",
-				  acpi_debug_levels[i].name,
-				  acpi_debug_levels[i].value,
-				  (acpi_dbg_level & acpi_debug_levels[i].value)
-				  ? '*' : ' ');
+		seq_buf_printf(buffer, "%-25s\t0x%08lX [%c]\n",
+			       acpi_debug_levels[i].name,
+			       acpi_debug_levels[i].value,
+			       (acpi_dbg_level & acpi_debug_levels[i].value)
+			       ? '*' : ' ');
 	}
-	result +=
-	    sprintf(buffer + result, "--\ndebug_level = 0x%08X (* = enabled)\n",
-		    acpi_dbg_level);
+	seq_buf_printf(buffer, "--\ndebug_level = 0x%08X (* = enabled)\n",
+		       acpi_dbg_level);
 
-	return result;
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(param_ops_debug_layer, param_set_uint,
@@ -247,16 +243,18 @@ static int param_set_trace_state(const char *val,
 	return 0;
 }
 
-static int param_get_trace_state(char *buffer, const struct kernel_param *kp)
+static int param_get_trace_state(struct seq_buf *buffer,
+				 const struct kernel_param *kp)
 {
 	if (!(acpi_gbl_trace_flags & ACPI_TRACE_ENABLED))
-		return sprintf(buffer, "disable\n");
-	if (!acpi_gbl_trace_method_name)
-		return sprintf(buffer, "enable\n");
-	if (acpi_gbl_trace_flags & ACPI_TRACE_ONESHOT)
-		return sprintf(buffer, "method-once\n");
+		seq_buf_printf(buffer, "disable\n");
+	else if (!acpi_gbl_trace_method_name)
+		seq_buf_printf(buffer, "enable\n");
+	else if (acpi_gbl_trace_flags & ACPI_TRACE_ONESHOT)
+		seq_buf_printf(buffer, "method-once\n");
 	else
-		return sprintf(buffer, "method\n");
+		seq_buf_printf(buffer, "method\n");
+	return 0;
 }
 
 module_param_call(trace_state, param_set_trace_state, param_get_trace_state,
@@ -272,14 +270,11 @@ MODULE_PARM_DESC(aml_debug_output,
 		 "To enable/disable the ACPI Debug Object output.");
 
 /* /sys/module/acpi/parameters/acpica_version */
-static int param_get_acpica_version(char *buffer,
+static int param_get_acpica_version(struct seq_buf *buffer,
 				    const struct kernel_param *kp)
 {
-	int result;
-
-	result = sprintf(buffer, "%x\n", ACPI_CA_VERSION);
-
-	return result;
+	seq_buf_printf(buffer, "%x\n", ACPI_CA_VERSION);
+	return 0;
 }
 
 module_param_call(acpica_version, NULL, param_get_acpica_version, NULL, 0444);
diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 91a99417d204..2bfec85ef331 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -197,11 +197,11 @@ static DEFINE_KERNEL_PARAM_OPS(param_ops_timeout, set_param_timeout,
 			       param_get_int);
 #define param_check_timeout param_check_int
 
-typedef int (*action_fn)(const char *intval, char *outval);
+typedef int (*action_fn)(const char *intval, struct seq_buf *outval);
 
-static int action_op(const char *inval, char *outval);
-static int preaction_op(const char *inval, char *outval);
-static int preop_op(const char *inval, char *outval);
+static int action_op(const char *inval, struct seq_buf *outval);
+static int preaction_op(const char *inval, struct seq_buf *outval);
+static int preop_op(const char *inval, struct seq_buf *outval);
 static void check_parms(void);
 
 static int set_param_str(const char *val, const struct kernel_param *kp)
@@ -227,20 +227,11 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
 	return rv;
 }
 
-static int get_param_str(char *buffer, const struct kernel_param *kp)
+static int get_param_str(struct seq_buf *buffer, const struct kernel_param *kp)
 {
 	action_fn fn = (action_fn) kp->arg;
-	int rv, len;
 
-	rv = fn(NULL, buffer);
-	if (rv)
-		return rv;
-
-	len = strlen(buffer);
-	buffer[len++] = '\n';
-	buffer[len] = 0;
-
-	return len;
+	return fn(NULL, buffer);
 }
 
 
@@ -1154,12 +1145,12 @@ static int action_op_set_val(const char *inval)
 	return 0;
 }
 
-static int action_op(const char *inval, char *outval)
+static int action_op(const char *inval, struct seq_buf *outval)
 {
 	int rv;
 
 	if (outval)
-		strcpy(outval, action);
+		seq_buf_printf(outval, "%s\n", action);
 
 	if (!inval)
 		return 0;
@@ -1186,12 +1177,12 @@ static int preaction_op_set_val(const char *inval)
 	return 0;
 }
 
-static int preaction_op(const char *inval, char *outval)
+static int preaction_op(const char *inval, struct seq_buf *outval)
 {
 	int rv;
 
 	if (outval)
-		strcpy(outval, preaction);
+		seq_buf_printf(outval, "%s\n", preaction);
 
 	if (!inval)
 		return 0;
@@ -1214,12 +1205,12 @@ static int preop_op_set_val(const char *inval)
 	return 0;
 }
 
-static int preop_op(const char *inval, char *outval)
+static int preop_op(const char *inval, struct seq_buf *outval)
 {
 	int rv;
 
 	if (outval)
-		strcpy(outval, preop);
+		seq_buf_printf(outval, "%s\n", preop);
 
 	if (!inval)
 		return 0;
diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index c87a5449ba8c..4ebc1e327849 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -860,7 +860,8 @@ static int fw_cfg_cmdline_set(const char *arg, const struct kernel_param *kp)
 	return PTR_ERR_OR_ZERO(fw_cfg_cmdline_dev);
 }
 
-static int fw_cfg_cmdline_get(char *buf, const struct kernel_param *kp)
+static int fw_cfg_cmdline_get(struct seq_buf *buf,
+			      const struct kernel_param *kp)
 {
 	/* stay silent if device was not configured via the command
 	 * line, or if the parameter name (ioport/mmio) doesn't match
@@ -873,22 +874,25 @@ static int fw_cfg_cmdline_get(char *buf, const struct kernel_param *kp)
 
 	switch (fw_cfg_cmdline_dev->num_resources) {
 	case 1:
-		return snprintf(buf, PAGE_SIZE, PH_ADDR_PR_1_FMT,
-				resource_size(&fw_cfg_cmdline_dev->resource[0]),
-				fw_cfg_cmdline_dev->resource[0].start);
+		seq_buf_printf(buf, PH_ADDR_PR_1_FMT,
+			       resource_size(&fw_cfg_cmdline_dev->resource[0]),
+			       fw_cfg_cmdline_dev->resource[0].start);
+		return 0;
 	case 3:
-		return snprintf(buf, PAGE_SIZE, PH_ADDR_PR_3_FMT,
-				resource_size(&fw_cfg_cmdline_dev->resource[0]),
-				fw_cfg_cmdline_dev->resource[0].start,
-				fw_cfg_cmdline_dev->resource[1].start,
-				fw_cfg_cmdline_dev->resource[2].start);
+		seq_buf_printf(buf, PH_ADDR_PR_3_FMT,
+			       resource_size(&fw_cfg_cmdline_dev->resource[0]),
+			       fw_cfg_cmdline_dev->resource[0].start,
+			       fw_cfg_cmdline_dev->resource[1].start,
+			       fw_cfg_cmdline_dev->resource[2].start);
+		return 0;
 	case 4:
-		return snprintf(buf, PAGE_SIZE, PH_ADDR_PR_4_FMT,
-				resource_size(&fw_cfg_cmdline_dev->resource[0]),
-				fw_cfg_cmdline_dev->resource[0].start,
-				fw_cfg_cmdline_dev->resource[1].start,
-				fw_cfg_cmdline_dev->resource[2].start,
-				fw_cfg_cmdline_dev->resource[3].start);
+		seq_buf_printf(buf, PH_ADDR_PR_4_FMT,
+			       resource_size(&fw_cfg_cmdline_dev->resource[0]),
+			       fw_cfg_cmdline_dev->resource[0].start,
+			       fw_cfg_cmdline_dev->resource[1].start,
+			       fw_cfg_cmdline_dev->resource[2].start,
+			       fw_cfg_cmdline_dev->resource[3].start);
+		return 0;
 	}
 
 	/* Should never get here */
diff --git a/drivers/gpu/drm/i915/i915_mitigations.c b/drivers/gpu/drm/i915/i915_mitigations.c
index 6061eae84e9c..99cb38f355b6 100644
--- a/drivers/gpu/drm/i915/i915_mitigations.c
+++ b/drivers/gpu/drm/i915/i915_mitigations.c
@@ -95,33 +95,37 @@ static int mitigations_set(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int mitigations_get(char *buffer, const struct kernel_param *kp)
+static int mitigations_get(struct seq_buf *buffer,
+			   const struct kernel_param *kp)
 {
 	unsigned long local = READ_ONCE(mitigations);
-	int count, i;
 	bool enable;
+	int i;
 
-	if (!local)
-		return scnprintf(buffer, PAGE_SIZE, "%s\n", "off");
+	if (!local) {
+		seq_buf_printf(buffer, "%s\n", "off");
+		return 0;
+	}
 
 	if (local & BIT(BITS_PER_LONG - 1)) {
-		count = scnprintf(buffer, PAGE_SIZE, "%s,", "auto");
+		seq_buf_printf(buffer, "%s,", "auto");
 		enable = false;
 	} else {
 		enable = true;
-		count = 0;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(names); i++) {
 		if ((local & BIT(i)) != enable)
 			continue;
-
-		count += scnprintf(buffer + count, PAGE_SIZE - count,
-				   "%s%s,", enable ? "" : "!", names[i]);
+		seq_buf_printf(buffer, "%s%s,", enable ? "" : "!", names[i]);
 	}
 
-	buffer[count - 1] = '\n';
-	return count;
+	/* Replace the trailing comma with a newline. */
+	if (!seq_buf_has_overflowed(buffer) && buffer->len > 0 &&
+	    buffer->buffer[buffer->len - 1] == ',')
+		buffer->buffer[buffer->len - 1] = '\n';
+
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(ops, mitigations_set, mitigations_get);
diff --git a/drivers/infiniband/ulp/srp/ib_srp.c b/drivers/infiniband/ulp/srp/ib_srp.c
index a81515f52a4f..4f53e939eec1 100644
--- a/drivers/infiniband/ulp/srp/ib_srp.c
+++ b/drivers/infiniband/ulp/srp/ib_srp.c
@@ -161,14 +161,15 @@ static struct ib_client srp_client = {
 
 static struct ib_sa_client srp_sa_client;
 
-static int srp_tmo_get(char *buffer, const struct kernel_param *kp)
+static int srp_tmo_get(struct seq_buf *buffer, const struct kernel_param *kp)
 {
 	int tmo = *(int *)kp->arg;
 
 	if (tmo >= 0)
-		return sysfs_emit(buffer, "%d\n", tmo);
+		seq_buf_printf(buffer, "%d\n", tmo);
 	else
-		return sysfs_emit(buffer, "off\n");
+		seq_buf_printf(buffer, "off\n");
+	return 0;
 }
 
 static int srp_tmo_set(const char *val, const struct kernel_param *kp)
diff --git a/drivers/media/usb/uvc/uvc_driver.c b/drivers/media/usb/uvc/uvc_driver.c
index 2338cab7fef9..1c5c40ce852d 100644
--- a/drivers/media/usb/uvc/uvc_driver.c
+++ b/drivers/media/usb/uvc/uvc_driver.c
@@ -2451,12 +2451,14 @@ static int uvc_reset_resume(struct usb_interface *intf)
  * Module parameters
  */
 
-static int uvc_clock_param_get(char *buffer, const struct kernel_param *kp)
+static int uvc_clock_param_get(struct seq_buf *buffer,
+			       const struct kernel_param *kp)
 {
 	if (uvc_clock_param == CLOCK_MONOTONIC)
-		return sprintf(buffer, "CLOCK_MONOTONIC");
+		seq_buf_printf(buffer, "CLOCK_MONOTONIC");
 	else
-		return sprintf(buffer, "CLOCK_REALTIME");
+		seq_buf_printf(buffer, "CLOCK_REALTIME");
+	return 0;
 }
 
 static int uvc_clock_param_set(const char *val, const struct kernel_param *kp)
diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
index 925373b98dff..af2dd668fe4d 100644
--- a/drivers/pci/pcie/aspm.c
+++ b/drivers/pci/pcie/aspm.c
@@ -1572,16 +1572,19 @@ static int pcie_aspm_set_policy(const char *val,
 	return 0;
 }
 
-static int pcie_aspm_get_policy(char *buffer, const struct kernel_param *kp)
+static int pcie_aspm_get_policy(struct seq_buf *buffer,
+				const struct kernel_param *kp)
 {
-	int i, cnt = 0;
-	for (i = 0; i < ARRAY_SIZE(policy_str); i++)
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(policy_str); i++) {
 		if (i == aspm_policy)
-			cnt += sprintf(buffer + cnt, "[%s] ", policy_str[i]);
+			seq_buf_printf(buffer, "[%s] ", policy_str[i]);
 		else
-			cnt += sprintf(buffer + cnt, "%s ", policy_str[i]);
-	cnt += sprintf(buffer + cnt, "\n");
-	return cnt;
+			seq_buf_printf(buffer, "%s ", policy_str[i]);
+	}
+	seq_buf_putc(buffer, '\n');
+	return 0;
 }
 
 module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
diff --git a/drivers/scsi/fcoe/fcoe_transport.c b/drivers/scsi/fcoe/fcoe_transport.c
index 88d85fc9a52a..aa10514ec46e 100644
--- a/drivers/scsi/fcoe/fcoe_transport.c
+++ b/drivers/scsi/fcoe/fcoe_transport.c
@@ -23,7 +23,8 @@ MODULE_LICENSE("GPL v2");
 
 static int fcoe_transport_create(const char *, const struct kernel_param *);
 static int fcoe_transport_destroy(const char *, const struct kernel_param *);
-static int fcoe_transport_show(char *buffer, const struct kernel_param *kp);
+static int fcoe_transport_show(struct seq_buf *buffer,
+			       const struct kernel_param *kp);
 static struct fcoe_transport *fcoe_transport_lookup(struct net_device *device);
 static struct fcoe_transport *fcoe_netdev_map_lookup(struct net_device *device);
 static int fcoe_transport_enable(const char *, const struct kernel_param *);
@@ -595,22 +596,21 @@ int fcoe_transport_detach(struct fcoe_transport *ft)
 }
 EXPORT_SYMBOL(fcoe_transport_detach);
 
-static int fcoe_transport_show(char *buffer, const struct kernel_param *kp)
+static int fcoe_transport_show(struct seq_buf *buffer,
+			       const struct kernel_param *kp)
 {
-	int i, j;
 	struct fcoe_transport *ft = NULL;
 
-	i = j = sprintf(buffer, "Attached FCoE transports:");
+	seq_buf_printf(buffer, "Attached FCoE transports:");
 	mutex_lock(&ft_mutex);
-	list_for_each_entry(ft, &fcoe_transports, list) {
-		if (i >= PAGE_SIZE - IFNAMSIZ)
-			break;
-		i += snprintf(&buffer[i], IFNAMSIZ, "%s ", ft->name);
+	if (list_empty(&fcoe_transports)) {
+		seq_buf_printf(buffer, "none");
+	} else {
+		list_for_each_entry(ft, &fcoe_transports, list)
+			seq_buf_printf(buffer, "%s ", ft->name);
 	}
 	mutex_unlock(&ft_mutex);
-	if (i == j)
-		i += snprintf(&buffer[i], IFNAMSIZ, "none");
-	return i;
+	return 0;
 }
 
 static int __init fcoe_transport_init(void)
diff --git a/drivers/thermal/intel/intel_powerclamp.c b/drivers/thermal/intel/intel_powerclamp.c
index 98fbc6892714..50ec1a0ff1ab 100644
--- a/drivers/thermal/intel/intel_powerclamp.c
+++ b/drivers/thermal/intel/intel_powerclamp.c
@@ -101,15 +101,13 @@ static int duration_set(const char *arg, const struct kernel_param *kp)
 	return ret;
 }
 
-static int duration_get(char *buf, const struct kernel_param *kp)
+static int duration_get(struct seq_buf *buf, const struct kernel_param *kp)
 {
-	int ret;
-
 	mutex_lock(&powerclamp_lock);
-	ret = sysfs_emit(buf, "%d\n", duration / 1000);
+	seq_buf_printf(buf, "%d\n", duration / 1000);
 	mutex_unlock(&powerclamp_lock);
 
-	return ret;
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(duration_ops, duration_set, duration_get);
@@ -192,12 +190,14 @@ static int cpumask_set(const char *arg, const struct kernel_param *kp)
 	return ret;
 }
 
-static int cpumask_get(char *buf, const struct kernel_param *kp)
+static int cpumask_get(struct seq_buf *buf, const struct kernel_param *kp)
 {
 	if (!cpumask_available(idle_injection_cpu_mask))
 		return -ENODEV;
 
-	return cpumap_print_to_pagebuf(false, buf, idle_injection_cpu_mask);
+	seq_buf_printf(buf, "%*pb\n", nr_cpu_ids,
+		       cpumask_bits(idle_injection_cpu_mask));
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(cpumask_ops, cpumask_set, cpumask_get);
diff --git a/drivers/tty/hvc/hvc_iucv.c b/drivers/tty/hvc/hvc_iucv.c
index 29612a4a32cb..b27c1dfbd249 100644
--- a/drivers/tty/hvc/hvc_iucv.c
+++ b/drivers/tty/hvc/hvc_iucv.c
@@ -1256,36 +1256,32 @@ static int param_set_vmidfilter(const char *val, const struct kernel_param *kp)
 
 /**
  * param_get_vmidfilter() - Get z/VM user ID filter
- * @buffer:	Buffer to store z/VM user ID filter,
- *		(buffer size assumption PAGE_SIZE)
+ * @buffer:	seq_buf to store z/VM user ID filter
  * @kp:		Kernel parameter pointing to the hvc_iucv_filter array
  *
  * The function stores the filter as a comma-separated list of z/VM user IDs
  * in @buffer. Typically, sysfs routines call this function for attr show.
  */
-static int param_get_vmidfilter(char *buffer, const struct kernel_param *kp)
+static int param_get_vmidfilter(struct seq_buf *buffer,
+				const struct kernel_param *kp)
 {
-	int rc;
 	size_t index, len;
 	void *start, *end;
 
 	if (!machine_is_vm() || !hvc_iucv_devices)
 		return -ENODEV;
 
-	rc = 0;
 	read_lock_bh(&hvc_iucv_filter_lock);
 	for (index = 0; index < hvc_iucv_filter_size; index++) {
 		start = hvc_iucv_filter + (8 * index);
 		end   = memchr(start, ' ', 8);
 		len   = (end) ? end - start : 8;
-		memcpy(buffer + rc, start, len);
-		rc += len;
-		buffer[rc++] = ',';
+		if (index)
+			seq_buf_putc(buffer, ',');
+		seq_buf_printf(buffer, "%.*s", (int)len, (char *)start);
 	}
 	read_unlock_bh(&hvc_iucv_filter_lock);
-	if (rc)
-		buffer[--rc] = '\0';	/* replace last comma and update rc */
-	return rc;
+	return 0;
 }
 
 #define param_check_vmidfilter(name, p) __param_check(name, p, void)
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 71dd623b95c9..637e1b8f622f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -115,27 +115,22 @@ static int parse_delay_str(const char *str, int ndecimals, const char *suffix,
  * @val: The integer value to format, scaled by 10^(@ndecimals).
  * @ndecimals: Number of decimal to scale down.
  * @suffix: Suffix string to format.
- * @str: Where to store the formatted string.
- * @size: The size of buffer for @str.
+ * @s: Where to store the formatted string.
  *
  * Format an integer value in @val scale down by 10^(@ndecimals) without @suffix
  * if @val is divisible by 10^(@ndecimals).
  * Otherwise format a value in @val just as it is with @suffix
- *
- * Returns the number of characters written into @str.
  */
-static int format_delay_ms(unsigned int val, int ndecimals, const char *suffix,
-			char *str, int size)
+static void format_delay_ms(unsigned int val, int ndecimals, const char *suffix,
+			    struct seq_buf *s)
 {
 	u64 delay_ms = val;
 	unsigned int rem = do_div(delay_ms, int_pow(10, ndecimals));
-	int ret;
 
 	if (rem)
-		ret = scnprintf(str, size, "%u%s\n", val, suffix);
+		seq_buf_printf(s, "%u%s\n", val, suffix);
 	else
-		ret = scnprintf(str, size, "%u\n", (unsigned int)delay_ms);
-	return ret;
+		seq_buf_printf(s, "%u\n", (unsigned int)delay_ms);
 }
 
 static int delay_use_set(const char *s, const struct kernel_param *kp)
@@ -151,11 +146,12 @@ static int delay_use_set(const char *s, const struct kernel_param *kp)
 	return 0;
 }
 
-static int delay_use_get(char *s, const struct kernel_param *kp)
+static int delay_use_get(struct seq_buf *s, const struct kernel_param *kp)
 {
 	unsigned int delay_ms = *((unsigned int *)kp->arg);
 
-	return format_delay_ms(delay_ms, 3, "ms", s, PAGE_SIZE);
+	format_delay_ms(delay_ms, 3, "ms", s);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(delay_use_ops, delay_use_set, delay_use_get);
diff --git a/drivers/virtio/virtio_mmio.c b/drivers/virtio/virtio_mmio.c
index f6df9c76ee81..81a7455e4643 100644
--- a/drivers/virtio/virtio_mmio.c
+++ b/drivers/virtio/virtio_mmio.c
@@ -728,24 +728,21 @@ static int vm_cmdline_set(const char *device,
 
 static int vm_cmdline_get_device(struct device *dev, void *data)
 {
-	char *buffer = data;
-	unsigned int len = strlen(buffer);
+	struct seq_buf *s = data;
 	struct platform_device *pdev = to_platform_device(dev);
 
-	snprintf(buffer + len, PAGE_SIZE - len, "0x%llx@0x%llx:%llu:%d\n",
-			pdev->resource[0].end - pdev->resource[0].start + 1ULL,
-			(unsigned long long)pdev->resource[0].start,
-			(unsigned long long)pdev->resource[1].start,
-			pdev->id);
+	seq_buf_printf(s, "0x%llx@0x%llx:%llu:%d\n",
+		       pdev->resource[0].end - pdev->resource[0].start + 1ULL,
+		       (unsigned long long)pdev->resource[0].start,
+		       (unsigned long long)pdev->resource[1].start,
+		       pdev->id);
 	return 0;
 }
 
-static int vm_cmdline_get(char *buffer, const struct kernel_param *kp)
+static int vm_cmdline_get(struct seq_buf *s, const struct kernel_param *kp)
 {
-	buffer[0] = '\0';
-	device_for_each_child(&vm_cmdline_parent, buffer,
-			vm_cmdline_get_device);
-	return strlen(buffer) + 1;
+	device_for_each_child(&vm_cmdline_parent, s, vm_cmdline_get_device);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(vm_cmdline_param_ops, vm_cmdline_set,
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index cf0405ba0dbd..123f061c2fb2 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -17,6 +17,7 @@
 #include <linux/module.h>
 #include <linux/moduleparam.h>
 #include <linux/kallsyms.h>
+#include <linux/seq_buf.h>
 #include <linux/types.h>
 #include <linux/mutex.h>
 #include <linux/proc_fs.h>
@@ -787,7 +788,8 @@ EXPORT_SYMBOL(param_set_dyndbg_classes);
  * altered by direct >control.  Displays 0x for DISJOINT, 0-N for
  * LEVEL Returns: #chars written or <0 on error
  */
-int param_get_dyndbg_classes(char *buffer, const struct kernel_param *kp)
+int param_get_dyndbg_classes(struct seq_buf *buffer,
+			     const struct kernel_param *kp)
 {
 	const struct ddebug_class_param *dcp = kp->arg;
 	const struct ddebug_class_map *map = dcp->map;
@@ -796,11 +798,13 @@ int param_get_dyndbg_classes(char *buffer, const struct kernel_param *kp)
 
 	case DD_CLASS_TYPE_DISJOINT_NAMES:
 	case DD_CLASS_TYPE_DISJOINT_BITS:
-		return scnprintf(buffer, PAGE_SIZE, "0x%lx\n", *dcp->bits);
+		seq_buf_printf(buffer, "0x%lx\n", *dcp->bits);
+		return 0;
 
 	case DD_CLASS_TYPE_LEVEL_NAMES:
 	case DD_CLASS_TYPE_LEVEL_NUM:
-		return scnprintf(buffer, PAGE_SIZE, "%d\n", *dcp->lvl);
+		seq_buf_printf(buffer, "%d\n", *dcp->lvl);
+		return 0;
 	default:
 		return -1;
 	}
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

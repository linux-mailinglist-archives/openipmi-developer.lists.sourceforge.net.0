Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONStCdETD2otFAYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:49 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB975A70D1
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oYCGQfqEmZASGr/M+go0WsbvHF4oJRSty9vVeHTiWv4=; b=S7FAk5hGqA0puy+YzrgSlYL09t
	0ZYk2KcgtWmsLx3KknJ9vJF955WDgLyjcUbETft3pEfE2i7+UVmQBeRcY5U3T8Vq5nbQ8tdhnqhUO
	xp+xOi9Hac8P5lBjCiq8Xa53Tojxb6OpOdu6xfdO/XB/m91+lA1m0YHykmsMUUjeDuRM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wQ4CU-0002fz-7m;
	Thu, 21 May 2026 14:16:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kees@kernel.org>) id 1wQ3Wv-0001fU-Mn
 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JMvTXrLi2fecyuCzobJPBmjEJITlU0vYIW862WydbuI=; b=IPnvZ0YXaVChelGpCTUOsi3+j8
 /fqJV6IKnESMzJMAHUpFYb/i6yfd+HXZ1tB2bQe1mKBbTfysw1c0LLfXFvI1VOn4Zm01Z54iQMiyH
 k6iXhs3pOwA09uW4boqFinz1UoAwyyxT8zoniiSYDkMEDjTj2zbxupbRvJqm593nlvxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JMvTXrLi2fecyuCzobJPBmjEJITlU0vYIW862WydbuI=; b=X
 Ryf8VgPtB88C7kzpC291VC/FHXyoT0L6GGxWB9zSZqsoXMn9ka1lP3mrZMOZ8r7KpdVYwXmrGHzAC
 g13DcYxn6HLzzXk6KcrBJtlrLlIs5gznmKs2y+8xk60i1Y4v+zrFO7Z2jiUAMtRrdfNdLbMPLvT1T
 UmQpvEmjTx1wG9pk=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wQ3Wq-0004OR-TT for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 9E93660210;
 Thu, 21 May 2026 13:33:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52B451F000E9;
 Thu, 21 May 2026 13:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1779370406;
 bh=JMvTXrLi2fecyuCzobJPBmjEJITlU0vYIW862WydbuI=;
 h=From:To:Cc:Subject:Date;
 b=ENRvP//NxlPse9MxCJOFh1AogZslAel87SB2mSCIhsf3jItcOS+woGIBwiFJXxxJO
 /vrcLfGb5f9Zgybo+8/jwPpcfxzDdtk9qobrtYv1Jx7qF2CaHOv9To+pMFVf+CxBaj
 Txk/IJPdMMNkgGbRiVQjeh8OyeTtBQ2jV3/sTZSlJcvRZB5VWyLoc9rDPU3aPLI4HL
 h0jOm1f2w6p8YOUlM5pSaTCh9uIPDhngu0K2kHqivFsRg/751UQV/kKlDAKhtjc0hL
 ruCH8xG0ElU6V7TuBi+cEWySHRlk4t3CmGbCJy8V2gQGUgE/wtg5mB81jG8Jj8LiQq
 dMkB09LzsXQtw==
To: Luis Chamberlain <mcgrof@kernel.org>
Date: Thu, 21 May 2026 06:33:13 -0700
Message-Id: <20260521133315.work.845-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=8383; i=kees@kernel.org;
 h=from:subject:message-id; bh=iRiRSOifqAhDEW+rM5ucutf2vqbqOCl0n39wA2pC2nE=;
 b=owGbwMvMwCVmps19z/KJym7G02pJDFn8nPP5NjJqfrXdrfdzgRzzhL0cEUvVFLTFyz0Emuo2S
 cuk+1zsKGVhEONikBVTZAmyc49z8XjbHu4+VxFmDisTyBAGLk4BmMjpjYwMW1sezs9aJ6S4pvfM
 9cD7+tJ32F5enlDXEpZXkNZ/g4mVnZFh3zrv5UmSl4OP8839kFvnc/3g3qNPdE9ob/yzv04h4/U
 XTgA=
X-Developer-Key: i=kees@kernel.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I tried to trim the CC list here, but it's still pretty
 huge... We've had a long-standing issue with "write to a string pointer"
 callbacks that don't bounds check the destination (and for which the bounds
 is also not part of the callback prototype, even if it is " [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wQ3Wq-0004OR-TT
X-Mailman-Approved-At: Thu, 21 May 2026 14:16:34 +0000
Subject: [Openipmi-developer] [PATCH 00/11] Convert moduleparams to seq_buf
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Queue-Id: 8AB975A70D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

I tried to trim the CC list here, but it's still pretty huge...

We've had a long-standing issue with "write to a string pointer" callbacks
that don't bounds check the destination (and for which the bounds is
also not part of the callback prototype, even if it is "known" to be
PAGE_SIZE, which sysfs_emit() depends on). Both moduleparams and sysfs
use this pattern. As a first step, and to test the migration method,
migrate moduleparams first.

There are 2 "mechanical" treewide patches that are handled by Coccinelle:
- treewide: Convert struct kernel_param_ops initializers to DEFINE_KERNEL_PARAM_OPS
- treewide: Convert custom kernel_param_ops .get callbacks to seq_buf via cocci

The last treewide patch is manual, and may need to be broken up into
per-subsystem patches, though I'd prefer to avoid this, as it would
extend the migration from 1 relase to at least 2 releases. (1 to
release the migration infrastructure, then 1 release to collect all the
subsystem changes, and possibly 1 more release to remove the migration
infrastructure.)

Thoughts, questions?

-Kees

Kees Cook (10):
  panic: Replace panic_print_get() with generic helper
  moduleparam: Add DEFINE_KERNEL_PARAM_OPS macro family
  treewide: Convert struct kernel_param_ops initializers to
    DEFINE_KERNEL_PARAM_OPS
  moduleparam: Rename .get field to .get_str
  moduleparam: Add seq_buf-based .get callback alongside .get_str
  moduleparam: Route DEFINE_KERNEL_PARAM_OPS get pointer via _Generic
  params: Convert generic kernel_param_ops .get helpers to seq_buf
  treewide: Convert custom kernel_param_ops .get callbacks to seq_buf
    via cocci
  treewide: Manually convert custom kernel_param_ops .get callbacks
  moduleparam: Drop legacy kernel_param_ops .get_str field and dispatch
    logic

Pengpeng Hou (1):
  params: bound array element output to the caller's page buffer

 include/linux/dynamic_debug.h                 |   8 +-
 include/linux/moduleparam.h                   |  65 +++++++---
 security/apparmor/include/lib.h               |   3 +-
 mm/kfence/core.c                              |  15 ++-
 arch/powerpc/kvm/book3s_hv.c                  |   5 +-
 arch/s390/kernel/perf_cpum_sf.c               |  12 +-
 arch/um/drivers/vfio_kern.c                   |   9 +-
 arch/um/drivers/virtio_uml.c                  |  18 +--
 arch/x86/kernel/msr.c                         |  11 +-
 arch/x86/kvm/mmu/mmu.c                        |  28 ++--
 arch/x86/kvm/svm/avic.c                       |  14 +-
 arch/x86/kvm/vmx/vmx.c                        |  24 ++--
 arch/x86/platform/uv/uv_nmi.c                 |  24 ++--
 block/disk-events.c                           |   6 +-
 drivers/acpi/button.c                         |  19 ++-
 drivers/acpi/ec.c                             |  14 +-
 drivers/acpi/sysfs.c                          | 114 ++++++++--------
 drivers/block/loop.c                          |  12 +-
 drivers/block/null_blk/main.c                 |  12 +-
 drivers/block/rnbd/rnbd-srv.c                 |   6 +-
 drivers/block/ublk_drv.c                      |  12 +-
 drivers/char/ipmi/ipmi_msghandler.c           |  12 +-
 drivers/char/ipmi/ipmi_watchdog.c             |  50 +++----
 drivers/crypto/hisilicon/hpre/hpre_main.c     |  16 +--
 drivers/crypto/hisilicon/sec2/sec_main.c      |  23 +---
 drivers/crypto/hisilicon/zip/zip_crypto.c     |   5 +-
 drivers/crypto/hisilicon/zip/zip_main.c       |  21 +--
 drivers/dma/dmatest.c                         |  34 ++---
 drivers/edac/i10nm_base.c                     |   6 +-
 drivers/firmware/efi/efi-pstore.c             |   6 +-
 drivers/firmware/qcom/qcom_scm.c              |  18 +--
 drivers/firmware/qemu_fw_cfg.c                |  40 +++---
 drivers/gpu/drm/drm_panic.c                   |  13 +-
 drivers/gpu/drm/i915/i915_mitigations.c       |  31 ++---
 drivers/gpu/drm/imagination/pvr_fw_trace.c    |   6 +-
 drivers/hid/hid-cougar.c                      |   6 +-
 drivers/hid/hid-steam.c                       |   6 +-
 drivers/infiniband/hw/hfi1/driver.c           |  12 +-
 drivers/infiniband/ulp/iser/iscsi_iser.c      |   6 +-
 drivers/infiniband/ulp/isert/ib_isert.c       |   6 +-
 drivers/infiniband/ulp/srp/ib_srp.c           |  12 +-
 drivers/infiniband/ulp/srpt/ib_srpt.c         |   5 +-
 drivers/input/misc/ati_remote2.c              |  23 ++--
 drivers/input/mouse/psmouse-base.c            |  15 ++-
 drivers/md/md.c                               |   5 +-
 drivers/media/pci/tw686x/tw686x-core.c        |   6 +-
 drivers/media/usb/uvc/uvc_driver.c            |  14 +-
 drivers/misc/lis3lv02d/lis3lv02d.c            |   5 +-
 drivers/net/wireless/ath/wil6210/main.c       |  10 +-
 drivers/nvme/host/multipath.c                 |  17 +--
 drivers/nvme/host/pci.c                       |  18 +--
 drivers/nvme/target/rdma.c                    |   5 +-
 drivers/nvme/target/tcp.c                     |   5 +-
 drivers/pci/pcie/aspm.c                       |  17 ++-
 drivers/platform/x86/acerhdf.c                |   5 +-
 drivers/power/supply/bq27xxx_battery.c        |   6 +-
 drivers/power/supply/test_power.c             | 122 +++++++++---------
 drivers/scsi/fcoe/fcoe_transport.c            |  22 ++--
 drivers/scsi/sg.c                             |   6 +-
 drivers/target/target_core_user.c             |  25 ++--
 .../processor_thermal_soc_slider.c            |  24 ++--
 drivers/thermal/intel/intel_powerclamp.c      |  34 ++---
 drivers/tty/hvc/hvc_iucv.c                    |  24 ++--
 drivers/tty/sysrq.c                           |   6 +-
 drivers/ufs/core/ufs-fault-injection.c        |  12 +-
 drivers/ufs/core/ufs-mcq.c                    |  18 +--
 drivers/ufs/core/ufs-txeq.c                   |   5 +-
 drivers/ufs/core/ufshcd.c                     |  12 +-
 drivers/usb/core/quirks.c                     |   6 +-
 drivers/usb/gadget/legacy/serial.c            |   5 +-
 drivers/usb/storage/usb.c                     |  25 ++--
 drivers/vhost/scsi.c                          |  12 +-
 drivers/virt/nitro_enclaves/ne_misc_dev.c     |   6 +-
 drivers/virtio/virtio_mmio.c                  |  27 ++--
 fs/ceph/super.c                               |  10 +-
 fs/fuse/dir.c                                 |   5 +-
 fs/nfs/namespace.c                            |  12 +-
 fs/nfs/super.c                                |   6 +-
 fs/ocfs2/dlmfs/dlmfs.c                        |   5 +-
 fs/overlayfs/copy_up.c                        |   5 +-
 fs/ubifs/super.c                              |   6 +-
 kernel/locking/locktorture.c                  |  12 +-
 kernel/panic.c                                |  11 +-
 kernel/params.c                               | 122 +++++++++---------
 kernel/power/hibernate.c                      |   6 +-
 kernel/rcu/tree.c                             |  24 ++--
 kernel/sched/ext.c                            |  11 +-
 kernel/workqueue.c                            |  18 ++-
 lib/dynamic_debug.c                           |  16 ++-
 lib/test_dynamic_debug.c                      |  12 +-
 mm/damon/lru_sort.c                           |  33 +++--
 mm/damon/reclaim.c                            |  33 +++--
 mm/damon/stat.c                               |  16 +--
 mm/memory_hotplug.c                           |  30 +++--
 mm/page_reporting.c                           |  11 +-
 mm/shuffle.c                                  |   6 +-
 mm/zswap.c                                    |  14 +-
 net/batman-adv/bat_algo.c                     |   6 +-
 net/ceph/ceph_common.c                        |  10 +-
 net/ipv4/tcp_dctcp.c                          |   6 +-
 net/sunrpc/auth.c                             |  12 +-
 net/sunrpc/svc.c                              |   5 +-
 net/sunrpc/xprtsock.c                         |  18 +--
 samples/damon/mtier.c                         |   6 +-
 samples/damon/prcl.c                          |   6 +-
 samples/damon/wsse.c                          |   6 +-
 security/apparmor/lib.c                       |  27 ++--
 security/apparmor/lsm.c                       |  75 +++++------
 sound/hda/controllers/intel.c                 |   5 +-
 sound/usb/card.c                              |   7 +-
 110 files changed, 854 insertions(+), 1066 deletions(-)

-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

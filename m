Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAdrCNETD2qOFAYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:49 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 337AD5A70C9
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9GV/kMshvllrf4DtexvVR5DqXMzr+LiX04AxLy99PJc=; b=ids/1GyuMnoqOhiWa0jIeAZ5b4
	qtB0bzWEwGgRvfK1LgBJ1Sg/HUtJeeNWeK1BsQHT8WyMrI22gtkAdw/0VLsPn2goaCk3Hh6PlYxvZ
	JKjcxX/lWiTwkn9yDv9Q1fcLTwqZEGCUfbih+6BhM6ZTDZ07qua8rzvHBJuijNNRT/GA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wQ4CW-0002hg-LE;
	Thu, 21 May 2026 14:16:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kees@kernel.org>) id 1wQ3X4-0007nt-Su
 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FjugSMshJLRzJ87g+DhKxRTzvS9KFi5IJoAY8Me8wZ4=; b=ficboHSCZFW2V+wghwJB4DJnRv
 iYeTZ1zhhuALvm/Ag9w3ZfELiDzA2nwgIypxYJ+RQjwycmiHw5bb61U89p3cBs4Fn5zdyc5uUlPXX
 pQLAsxddhDy/IrnGuqwxjPemqnvEsUlWOO84xeCVfwcaEZprR0AQvfDBXJUpMOHqo9C4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FjugSMshJLRzJ87g+DhKxRTzvS9KFi5IJoAY8Me8wZ4=; b=Vfz5SSyEV3P81DPjowbBtpsxBr
 ZcJAyvAIp/IHQ7u1KAHYUcou6xa7wU7JWJVvbdg1kRD31nKBHo0e/eW8ETN32hGsEaYAUzz4lQLTc
 b0RTz8MTMkX2ToGaCqUnmt88dOjr+S5t3IFSblHItdGtSjG1xY2FDi9g/2PQTucgERpU=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wQ3Wz-0004PI-PW for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 59B0B44652;
 Thu, 21 May 2026 13:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 208971F01566;
 Thu, 21 May 2026 13:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1779370407;
 bh=FjugSMshJLRzJ87g+DhKxRTzvS9KFi5IJoAY8Me8wZ4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Rjl/C7Ak/rWXoli6qausN/s7zIg/31jIrfAm6facv9zLoPhOVPhyOuBG7EQajOjH8
 gHI8NTfdKj/QipDfHZDexmfs+GBKcJtnfArb6l4tmHPrCeAsjOBE753KMnwIWHIXT7
 wiBrT5Ku1jWjtwhraZodt77LvIv28wxYiii9z7wXlGOyoetYfumYHpZHGLbsZLJVe5
 KDbtLWtPhhUwgagBBqEz6FOrn6eAX0VhmBv9wChxmjDB5nqC7e5jljwlbZmMWnNvy7
 68MXwt8eNgaDmqQ5piZHn7iG6hYuYz1KCLxD6IXY1kiyNSlLQOoyZzCD8CHIqruzCF
 J0Vq0H41abyQw==
To: Luis Chamberlain <mcgrof@kernel.org>
Date: Thu, 21 May 2026 06:33:22 -0700
Message-Id: <20260521133326.2465264-9-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260521133315.work.845-kees@kernel.org>
References: <20260521133315.work.845-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=42083; i=kees@kernel.org;
 h=from:subject; bh=p6f0uHBZ7Ncu865sVYf8FVQdp7qUibRMEgCp94LuIm4=;
 b=owGbwMvMwCVmps19z/KJym7G02pJDFn8nIsbzeTTLszWqc6+lLCF+9/+6VJbp+llhKRF787jO
 OTlPWdVRykLgxgXg6yYIkuQnXuci8fb9nD3uYowc1iZQIYwcHEKwER83Rh+MTusOaP4X4o1Qey6
 jf2i5U7ztCMX7Du+/cBF/tobn72NtRn+aeySYRVfV97dNVsx+wO35KbMGT5b5aab/otLW/JBsXI
 tIwA=
X-Developer-Key: i=kees@kernel.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Using the following Coccinelle script,
 convert struct kernel_param_ops
 .get callbacks from "char *" to "struct seq_buf *" when the only write to
 the buffer is via a final call of scnprintf(), snprintf [...] 
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
X-Headers-End: 1wQ3Wz-0004PI-PW
X-Mailman-Approved-At: Thu, 21 May 2026 14:16:35 +0000
Subject: [Openipmi-developer] [PATCH 09/11] treewide: Convert custom
 kernel_param_ops .get callbacks to seq_buf via cocci
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
X-Rspamd-Queue-Id: 337AD5A70C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Using the following Coccinelle script, convert struct kernel_param_ops
.get callbacks from "char *" to "struct seq_buf *" when the only write
to the buffer is via a final call of scnprintf(), snprintf(), sprintf(),
or sysfs_emit().

Since seq_buf_printf() will return -1 on overflow, and struct
kernel_param_ops .get callbacks are expected to truncate without error,
we must ignore the return value from seq_buf_print() and always return 0
(as the length is calculated in the common dispatcher code).

@@
identifier FN, BUF, KP;
expression FMT;
expression list ARGS;
@@
 int FN(
-               char *BUF
+               struct seq_buf *BUF
                , const struct kernel_param *KP)
 {
        ... when any
(
-       return scnprintf(BUF, PAGE_SIZE, FMT, ARGS);
|
-       return snprintf(BUF, PAGE_SIZE, FMT, ARGS);
|
-       return sprintf(BUF, FMT, ARGS);
|
-       return sysfs_emit(BUF, FMT, ARGS);
)
+       seq_buf_printf(BUF, FMT, ARGS);
+       return 0;
 }

No struct kernel_param_ops initializations need changing since
DEFINE_KERNEL_PARAM_OPS already routes the pointer to .get or .get_str
via _Generic based on the function signature, so converted callbacks
are automatically moved from the .get_str to the .get callback.

Signed-off-by: Kees Cook <kees@kernel.org>
---
 arch/s390/kernel/perf_cpum_sf.c               |  6 ++-
 arch/x86/kernel/msr.c                         |  5 +-
 arch/x86/kvm/vmx/vmx.c                        | 18 ++++---
 arch/x86/platform/uv/uv_nmi.c                 | 12 +++--
 drivers/acpi/ec.c                             | 14 ++++--
 drivers/acpi/sysfs.c                          |  6 ++-
 drivers/block/ublk_drv.c                      |  5 +-
 drivers/char/ipmi/ipmi_msghandler.c           |  6 ++-
 drivers/firmware/qcom/qcom_scm.c              | 12 +++--
 drivers/gpu/drm/drm_panic.c                   |  7 +--
 drivers/infiniband/hw/hfi1/driver.c           |  7 +--
 drivers/infiniband/ulp/srpt/ib_srpt.c         |  5 +-
 drivers/input/misc/ati_remote2.c              | 10 ++--
 drivers/input/mouse/psmouse-base.c            |  9 ++--
 drivers/md/md.c                               |  5 +-
 drivers/media/pci/tw686x/tw686x-core.c        |  6 ++-
 drivers/nvme/host/multipath.c                 |  5 +-
 drivers/power/supply/test_power.c             | 47 +++++++++++--------
 drivers/target/target_core_user.c             | 12 +++--
 .../processor_thermal_soc_slider.c            | 12 +++--
 drivers/ufs/core/ufs-fault-injection.c        |  7 +--
 drivers/vhost/scsi.c                          |  5 +-
 fs/nfs/namespace.c                            |  6 ++-
 fs/ocfs2/dlmfs/dlmfs.c                        |  5 +-
 fs/overlayfs/copy_up.c                        |  5 +-
 kernel/locking/locktorture.c                  |  6 ++-
 kernel/rcu/tree.c                             |  6 ++-
 kernel/workqueue.c                            |  6 ++-
 lib/test_dynamic_debug.c                      |  6 ++-
 mm/damon/lru_sort.c                           | 14 +++---
 mm/damon/reclaim.c                            | 14 +++---
 mm/damon/stat.c                               | 10 ++--
 mm/memory_hotplug.c                           | 18 ++++---
 net/ceph/ceph_common.c                        |  5 +-
 net/sunrpc/auth.c                             |  6 ++-
 net/sunrpc/svc.c                              |  5 +-
 security/apparmor/lsm.c                       | 16 ++++---
 37 files changed, 218 insertions(+), 131 deletions(-)

diff --git a/arch/s390/kernel/perf_cpum_sf.c b/arch/s390/kernel/perf_cpum_sf.c
index 76119542562b..75b0d441d238 100644
--- a/arch/s390/kernel/perf_cpum_sf.c
+++ b/arch/s390/kernel/perf_cpum_sf.c
@@ -1991,11 +1991,13 @@ static int s390_pmu_sf_offline_cpu(unsigned int cpu)
 	return cpusf_pmu_setup(cpu, PMC_RELEASE);
 }
 
-static int param_get_sfb_size(char *buffer, const struct kernel_param *kp)
+static int param_get_sfb_size(struct seq_buf *buffer,
+			      const struct kernel_param *kp)
 {
 	if (!cpum_sf_avail())
 		return -ENODEV;
-	return sprintf(buffer, "%lu,%lu", CPUM_SF_MIN_SDB, CPUM_SF_MAX_SDB);
+	seq_buf_printf(buffer, "%lu,%lu", CPUM_SF_MIN_SDB, CPUM_SF_MAX_SDB);
+	return 0;
 }
 
 static int param_set_sfb_size(const char *val, const struct kernel_param *kp)
diff --git a/arch/x86/kernel/msr.c b/arch/x86/kernel/msr.c
index 5f4e1814dc4d..9f07f66c3cfc 100644
--- a/arch/x86/kernel/msr.c
+++ b/arch/x86/kernel/msr.c
@@ -309,7 +309,7 @@ static int set_allow_writes(const char *val, const struct kernel_param *cp)
 	return 0;
 }
 
-static int get_allow_writes(char *buf, const struct kernel_param *kp)
+static int get_allow_writes(struct seq_buf *buf, const struct kernel_param *kp)
 {
 	const char *res;
 
@@ -319,7 +319,8 @@ static int get_allow_writes(char *buf, const struct kernel_param *kp)
 	default: res = "default"; break;
 	}
 
-	return sprintf(buf, "%s\n", res);
+	seq_buf_printf(buf, "%s\n", res);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(allow_writes_ops, set_allow_writes,
diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index 07f4c7209ac0..00317774a90b 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -368,12 +368,16 @@ static int vmentry_l1d_flush_set(const char *s, const struct kernel_param *kp)
 	return ret;
 }
 
-static int vmentry_l1d_flush_get(char *s, const struct kernel_param *kp)
+static int vmentry_l1d_flush_get(struct seq_buf *s,
+				 const struct kernel_param *kp)
 {
-	if (WARN_ON_ONCE(l1tf_vmx_mitigation >= ARRAY_SIZE(vmentry_l1d_param)))
-		return sysfs_emit(s, "???\n");
+	if (WARN_ON_ONCE(l1tf_vmx_mitigation >= ARRAY_SIZE(vmentry_l1d_param))) {
+		seq_buf_printf(s, "???\n");
+		return 0;
+	}
 
-	return sysfs_emit(s, "%s\n", vmentry_l1d_param[l1tf_vmx_mitigation].option);
+	seq_buf_printf(s, "%s\n", vmentry_l1d_param[l1tf_vmx_mitigation].option);
+	return 0;
 }
 
 /*
@@ -459,9 +463,11 @@ static int vmentry_l1d_flush_set(const char *s, const struct kernel_param *kp)
 	pr_warn_once("Kernel compiled without mitigations, ignoring vmentry_l1d_flush\n");
 	return 0;
 }
-static int vmentry_l1d_flush_get(char *s, const struct kernel_param *kp)
+static int vmentry_l1d_flush_get(struct seq_buf *s,
+				 const struct kernel_param *kp)
 {
-	return sysfs_emit(s, "never\n");
+	seq_buf_printf(s, "never\n");
+	return 0;
 }
 #endif
 
diff --git a/arch/x86/platform/uv/uv_nmi.c b/arch/x86/platform/uv/uv_nmi.c
index a7ac80b5f8d9..c401369efe22 100644
--- a/arch/x86/platform/uv/uv_nmi.c
+++ b/arch/x86/platform/uv/uv_nmi.c
@@ -111,9 +111,11 @@ module_param_named(dump_loglevel, uv_nmi_loglevel, int, 0644);
  * The following values show statistics on how perf events are affecting
  * this system.
  */
-static int param_get_local64(char *buffer, const struct kernel_param *kp)
+static int param_get_local64(struct seq_buf *buffer,
+			     const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%lu\n", local64_read((local64_t *)kp->arg));
+	seq_buf_printf(buffer, "%lu\n", local64_read((local64_t *)kp->arg));
+	return 0;
 }
 
 static int param_set_local64(const char *val, const struct kernel_param *kp)
@@ -207,9 +209,11 @@ static const char * const actions_desc[nmi_act_max] = {
 
 static enum action_t uv_nmi_action = nmi_act_dump;
 
-static int param_get_action(char *buffer, const struct kernel_param *kp)
+static int param_get_action(struct seq_buf *buffer,
+			    const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n", actions[uv_nmi_action]);
+	seq_buf_printf(buffer, "%s\n", actions[uv_nmi_action]);
+	return 0;
 }
 
 static int param_set_action(const char *val, const struct kernel_param *kp)
diff --git a/drivers/acpi/ec.c b/drivers/acpi/ec.c
index 45204538ed87..6478e5290faf 100644
--- a/drivers/acpi/ec.c
+++ b/drivers/acpi/ec.c
@@ -2236,18 +2236,22 @@ static int param_set_event_clearing(const char *val,
 	return result;
 }
 
-static int param_get_event_clearing(char *buffer,
+static int param_get_event_clearing(struct seq_buf *buffer,
 				    const struct kernel_param *kp)
 {
 	switch (ec_event_clearing) {
 	case ACPI_EC_EVT_TIMING_STATUS:
-		return sprintf(buffer, "status\n");
+		seq_buf_printf(buffer, "status\n");
+		return 0;
 	case ACPI_EC_EVT_TIMING_QUERY:
-		return sprintf(buffer, "query\n");
+		seq_buf_printf(buffer, "query\n");
+		return 0;
 	case ACPI_EC_EVT_TIMING_EVENT:
-		return sprintf(buffer, "event\n");
+		seq_buf_printf(buffer, "event\n");
+		return 0;
 	default:
-		return sprintf(buffer, "invalid\n");
+		seq_buf_printf(buffer, "invalid\n");
+		return 0;
 	}
 	return 0;
 }
diff --git a/drivers/acpi/sysfs.c b/drivers/acpi/sysfs.c
index 3d32a5280432..5247ed7e05cc 100644
--- a/drivers/acpi/sysfs.c
+++ b/drivers/acpi/sysfs.c
@@ -192,9 +192,11 @@ static int param_set_trace_method_name(const char *val,
 	return 0;
 }
 
-static int param_get_trace_method_name(char *buffer, const struct kernel_param *kp)
+static int param_get_trace_method_name(struct seq_buf *buffer,
+				       const struct kernel_param *kp)
 {
-	return sysfs_emit(buffer, "%s\n", acpi_gbl_trace_method_name);
+	seq_buf_printf(buffer, "%s\n", acpi_gbl_trace_method_name);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(param_ops_trace_method,
diff --git a/drivers/block/ublk_drv.c b/drivers/block/ublk_drv.c
index f7bf7ea2d088..ea35662381bf 100644
--- a/drivers/block/ublk_drv.c
+++ b/drivers/block/ublk_drv.c
@@ -5868,10 +5868,11 @@ static int ublk_set_max_unprivileged_ublks(const char *buf,
 	return param_set_uint_minmax(buf, kp, 0, UBLK_MAX_UBLKS);
 }
 
-static int ublk_get_max_unprivileged_ublks(char *buf,
+static int ublk_get_max_unprivileged_ublks(struct seq_buf *buf,
 					   const struct kernel_param *kp)
 {
-	return sysfs_emit(buf, "%u\n", unprivileged_ublks_max);
+	seq_buf_printf(buf, "%u\n", unprivileged_ublks_max);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(ublk_max_unprivileged_ublks_ops,
diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index b5fed11707e8..45941605b88f 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -90,7 +90,8 @@ static int panic_op_write_handler(const char *val,
 	return 0;
 }
 
-static int panic_op_read_handler(char *buffer, const struct kernel_param *kp)
+static int panic_op_read_handler(struct seq_buf *buffer,
+				 const struct kernel_param *kp)
 {
 	const char *event_str;
 
@@ -99,7 +100,8 @@ static int panic_op_read_handler(char *buffer, const struct kernel_param *kp)
 	else
 		event_str = ipmi_panic_event_str[ipmi_send_panic_event];
 
-	return sprintf(buffer, "%s\n", event_str);
+	seq_buf_printf(buffer, "%s\n", event_str);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(panic_op_ops, panic_op_write_handler,
diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index ef57df53e087..1bdb497e354e 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2694,12 +2694,16 @@ static irqreturn_t qcom_scm_irq_handler(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-static int get_download_mode(char *buffer, const struct kernel_param *kp)
+static int get_download_mode(struct seq_buf *buffer,
+			     const struct kernel_param *kp)
 {
-	if (download_mode >= ARRAY_SIZE(download_mode_name))
-		return sysfs_emit(buffer, "unknown mode\n");
+	if (download_mode >= ARRAY_SIZE(download_mode_name)) {
+		seq_buf_printf(buffer, "unknown mode\n");
+		return 0;
+	}
 
-	return sysfs_emit(buffer, "%s\n", download_mode_name[download_mode]);
+	seq_buf_printf(buffer, "%s\n", download_mode_name[download_mode]);
+	return 0;
 }
 
 static int set_download_mode(const char *val, const struct kernel_param *kp)
diff --git a/drivers/gpu/drm/drm_panic.c b/drivers/gpu/drm/drm_panic.c
index c35d1adf2ce3..8b3b749284f0 100644
--- a/drivers/gpu/drm/drm_panic.c
+++ b/drivers/gpu/drm/drm_panic.c
@@ -841,10 +841,11 @@ static int drm_panic_type_set(const char *val, const struct kernel_param *kp)
 	return -EINVAL;
 }
 
-static int drm_panic_type_get(char *buffer, const struct kernel_param *kp)
+static int drm_panic_type_get(struct seq_buf *buffer,
+			      const struct kernel_param *kp)
 {
-	return scnprintf(buffer, PAGE_SIZE, "%s\n",
-			 drm_panic_type_map[drm_panic_type]);
+	seq_buf_printf(buffer, "%s\n", drm_panic_type_map[drm_panic_type]);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(drm_panic_ops, drm_panic_type_set,
diff --git a/drivers/infiniband/hw/hfi1/driver.c b/drivers/infiniband/hw/hfi1/driver.c
index 5b9b0b38b419..3c3f8d4db99d 100644
--- a/drivers/infiniband/hw/hfi1/driver.c
+++ b/drivers/infiniband/hw/hfi1/driver.c
@@ -41,7 +41,7 @@ MODULE_PARM_DESC(cu, "Credit return units");
 
 unsigned long hfi1_cap_mask = HFI1_CAP_MASK_DEFAULT;
 static int hfi1_caps_set(const char *val, const struct kernel_param *kp);
-static int hfi1_caps_get(char *buffer, const struct kernel_param *kp);
+static int hfi1_caps_get(struct seq_buf *buffer, const struct kernel_param *kp);
 static DEFINE_KERNEL_PARAM_OPS(cap_ops, hfi1_caps_set, hfi1_caps_get);
 module_param_cb(cap_mask, &cap_ops, &hfi1_cap_mask, S_IWUSR | S_IRUGO);
 MODULE_PARM_DESC(cap_mask, "Bit mask of enabled/disabled HW features");
@@ -101,14 +101,15 @@ static int hfi1_caps_set(const char *val, const struct kernel_param *kp)
 	return ret;
 }
 
-static int hfi1_caps_get(char *buffer, const struct kernel_param *kp)
+static int hfi1_caps_get(struct seq_buf *buffer, const struct kernel_param *kp)
 {
 	unsigned long cap_mask = *(unsigned long *)kp->arg;
 
 	cap_mask &= ~HFI1_CAP_LOCKED_SMASK;
 	cap_mask |= ((cap_mask & HFI1_CAP_K2U) << HFI1_CAP_USER_SHIFT);
 
-	return sysfs_emit(buffer, "0x%lx\n", cap_mask);
+	seq_buf_printf(buffer, "0x%lx\n", cap_mask);
+	return 0;
 }
 
 struct pci_dev *get_pci_dev(struct rvt_dev_info *rdi)
diff --git a/drivers/infiniband/ulp/srpt/ib_srpt.c b/drivers/infiniband/ulp/srpt/ib_srpt.c
index 9aec5d80117f..97c77d52a86a 100644
--- a/drivers/infiniband/ulp/srpt/ib_srpt.c
+++ b/drivers/infiniband/ulp/srpt/ib_srpt.c
@@ -86,9 +86,10 @@ static int srpt_set_u64_x(const char *buffer, const struct kernel_param *kp)
 {
 	return kstrtou64(buffer, 16, (u64 *)kp->arg);
 }
-static int srpt_get_u64_x(char *buffer, const struct kernel_param *kp)
+static int srpt_get_u64_x(struct seq_buf *buffer, const struct kernel_param *kp)
 {
-	return sprintf(buffer, "0x%016llx\n", *(u64 *)kp->arg);
+	seq_buf_printf(buffer, "0x%016llx\n", *(u64 *)kp->arg);
+	return 0;
 }
 module_param_call(srpt_service_guid, srpt_set_u64_x, srpt_get_u64_x,
 		  &srpt_service_guid, 0444);
diff --git a/drivers/input/misc/ati_remote2.c b/drivers/input/misc/ati_remote2.c
index 8b4ef7e163d3..d101fe1c2c4c 100644
--- a/drivers/input/misc/ati_remote2.c
+++ b/drivers/input/misc/ati_remote2.c
@@ -63,12 +63,13 @@ static int ati_remote2_set_channel_mask(const char *val,
 	return ati_remote2_set_mask(val, kp, ATI_REMOTE2_MAX_CHANNEL_MASK);
 }
 
-static int ati_remote2_get_channel_mask(char *buffer,
+static int ati_remote2_get_channel_mask(struct seq_buf *buffer,
 					const struct kernel_param *kp)
 {
 	pr_debug("%s()\n", __func__);
 
-	return sprintf(buffer, "0x%04x\n", *(unsigned int *)kp->arg);
+	seq_buf_printf(buffer, "0x%04x\n", *(unsigned int *)kp->arg);
+	return 0;
 }
 
 static int ati_remote2_set_mode_mask(const char *val,
@@ -79,12 +80,13 @@ static int ati_remote2_set_mode_mask(const char *val,
 	return ati_remote2_set_mask(val, kp, ATI_REMOTE2_MAX_MODE_MASK);
 }
 
-static int ati_remote2_get_mode_mask(char *buffer,
+static int ati_remote2_get_mode_mask(struct seq_buf *buffer,
 				     const struct kernel_param *kp)
 {
 	pr_debug("%s()\n", __func__);
 
-	return sprintf(buffer, "0x%02x\n", *(unsigned int *)kp->arg);
+	seq_buf_printf(buffer, "0x%02x\n", *(unsigned int *)kp->arg);
+	return 0;
 }
 
 static unsigned int channel_mask = ATI_REMOTE2_MAX_CHANNEL_MASK;
diff --git a/drivers/input/mouse/psmouse-base.c b/drivers/input/mouse/psmouse-base.c
index f9ebb1fd0b6f..39a9b87e69d1 100644
--- a/drivers/input/mouse/psmouse-base.c
+++ b/drivers/input/mouse/psmouse-base.c
@@ -44,7 +44,8 @@ MODULE_LICENSE("GPL");
 
 static unsigned int psmouse_max_proto = PSMOUSE_AUTO;
 static int psmouse_set_maxproto(const char *val, const struct kernel_param *);
-static int psmouse_get_maxproto(char *buffer, const struct kernel_param *kp);
+static int psmouse_get_maxproto(struct seq_buf *buffer,
+				const struct kernel_param *kp);
 static DEFINE_KERNEL_PARAM_OPS(param_ops_proto_abbrev, psmouse_set_maxproto,
 			       psmouse_get_maxproto);
 #define param_check_proto_abbrev(name, p)	__param_check(name, p, unsigned int)
@@ -1994,11 +1995,13 @@ static int psmouse_set_maxproto(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int psmouse_get_maxproto(char *buffer, const struct kernel_param *kp)
+static int psmouse_get_maxproto(struct seq_buf *buffer,
+				const struct kernel_param *kp)
 {
 	int type = *((unsigned int *)kp->arg);
 
-	return sprintf(buffer, "%s\n", psmouse_protocol_by_type(type)->name);
+	seq_buf_printf(buffer, "%s\n", psmouse_protocol_by_type(type)->name);
+	return 0;
 }
 
 static int __init psmouse_init(void)
diff --git a/drivers/md/md.c b/drivers/md/md.c
index 8b568eee8743..ce3eb1396ad0 100644
--- a/drivers/md/md.c
+++ b/drivers/md/md.c
@@ -10989,9 +10989,10 @@ static __exit void md_exit(void)
 subsys_initcall(md_init);
 module_exit(md_exit)
 
-static int get_ro(char *buffer, const struct kernel_param *kp)
+static int get_ro(struct seq_buf *buffer, const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%d\n", start_readonly);
+	seq_buf_printf(buffer, "%d\n", start_readonly);
+	return 0;
 }
 static int set_ro(const char *val, const struct kernel_param *kp)
 {
diff --git a/drivers/media/pci/tw686x/tw686x-core.c b/drivers/media/pci/tw686x/tw686x-core.c
index a10e38221817..35a6ff8d77fc 100644
--- a/drivers/media/pci/tw686x/tw686x-core.c
+++ b/drivers/media/pci/tw686x/tw686x-core.c
@@ -69,9 +69,11 @@ static const char *dma_mode_name(unsigned int mode)
 	}
 }
 
-static int tw686x_dma_mode_get(char *buffer, const struct kernel_param *kp)
+static int tw686x_dma_mode_get(struct seq_buf *buffer,
+			       const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s", dma_mode_name(dma_mode));
+	seq_buf_printf(buffer, "%s", dma_mode_name(dma_mode));
+	return 0;
 }
 
 static int tw686x_dma_mode_set(const char *val, const struct kernel_param *kp)
diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index f7362377e427..e0c87447074d 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -85,9 +85,10 @@ static int nvme_set_iopolicy(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int nvme_get_iopolicy(char *buf, const struct kernel_param *kp)
+static int nvme_get_iopolicy(struct seq_buf *buf, const struct kernel_param *kp)
 {
-	return sprintf(buf, "%s\n", nvme_iopolicy_names[iopolicy]);
+	seq_buf_printf(buf, "%s\n", nvme_iopolicy_names[iopolicy]);
+	return 0;
 }
 
 module_param_call(iopolicy, nvme_set_iopolicy, nvme_get_iopolicy,
diff --git a/drivers/power/supply/test_power.c b/drivers/power/supply/test_power.c
index 0bf2bef3383a..9dcd588ab5c9 100644
--- a/drivers/power/supply/test_power.c
+++ b/drivers/power/supply/test_power.c
@@ -490,10 +490,12 @@ static int param_set_ac_online(const char *key, const struct kernel_param *kp)
 	return 0;
 }
 
-static int param_get_ac_online(char *buffer, const struct kernel_param *kp)
+static int param_get_ac_online(struct seq_buf *buffer,
+			       const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n",
-			map_get_key(map_ac_online, ac_online, "unknown"));
+	seq_buf_printf(buffer, "%s\n",
+		       map_get_key(map_ac_online, ac_online, "unknown"));
+	return 0;
 }
 
 static int param_set_usb_online(const char *key, const struct kernel_param *kp)
@@ -503,10 +505,12 @@ static int param_set_usb_online(const char *key, const struct kernel_param *kp)
 	return 0;
 }
 
-static int param_get_usb_online(char *buffer, const struct kernel_param *kp)
+static int param_get_usb_online(struct seq_buf *buffer,
+				const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n",
-			map_get_key(map_ac_online, usb_online, "unknown"));
+	seq_buf_printf(buffer, "%s\n",
+		       map_get_key(map_ac_online, usb_online, "unknown"));
+	return 0;
 }
 
 static int param_set_battery_status(const char *key,
@@ -517,10 +521,12 @@ static int param_set_battery_status(const char *key,
 	return 0;
 }
 
-static int param_get_battery_status(char *buffer, const struct kernel_param *kp)
+static int param_get_battery_status(struct seq_buf *buffer,
+				    const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n",
-			map_get_key(map_ac_online, battery_status, "unknown"));
+	seq_buf_printf(buffer, "%s\n",
+		       map_get_key(map_ac_online, battery_status, "unknown"));
+	return 0;
 }
 
 static int param_set_battery_health(const char *key,
@@ -531,10 +537,12 @@ static int param_set_battery_health(const char *key,
 	return 0;
 }
 
-static int param_get_battery_health(char *buffer, const struct kernel_param *kp)
+static int param_get_battery_health(struct seq_buf *buffer,
+				    const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n",
-			map_get_key(map_ac_online, battery_health, "unknown"));
+	seq_buf_printf(buffer, "%s\n",
+		       map_get_key(map_ac_online, battery_health, "unknown"));
+	return 0;
 }
 
 static int param_set_battery_present(const char *key,
@@ -545,11 +553,12 @@ static int param_set_battery_present(const char *key,
 	return 0;
 }
 
-static int param_get_battery_present(char *buffer,
+static int param_get_battery_present(struct seq_buf *buffer,
 					const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n",
-			map_get_key(map_ac_online, battery_present, "unknown"));
+	seq_buf_printf(buffer, "%s\n",
+		       map_get_key(map_ac_online, battery_present, "unknown"));
+	return 0;
 }
 
 static int param_set_battery_technology(const char *key,
@@ -561,12 +570,12 @@ static int param_set_battery_technology(const char *key,
 	return 0;
 }
 
-static int param_get_battery_technology(char *buffer,
+static int param_get_battery_technology(struct seq_buf *buffer,
 					const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n",
-			map_get_key(map_ac_online, battery_technology,
-					"unknown"));
+	seq_buf_printf(buffer, "%s\n",
+		       map_get_key(map_ac_online, battery_technology, "unknown"));
+	return 0;
 }
 
 static int param_set_battery_capacity(const char *key,
diff --git a/drivers/target/target_core_user.c b/drivers/target/target_core_user.c
index 676a12b44e88..5e8817a63726 100644
--- a/drivers/target/target_core_user.c
+++ b/drivers/target/target_core_user.c
@@ -249,10 +249,11 @@ static int tcmu_set_global_max_data_area(const char *str,
 	return 0;
 }
 
-static int tcmu_get_global_max_data_area(char *buffer,
+static int tcmu_get_global_max_data_area(struct seq_buf *buffer,
 					 const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%d\n", TCMU_PAGES_TO_MBS(tcmu_global_max_pages));
+	seq_buf_printf(buffer, "%d\n", TCMU_PAGES_TO_MBS(tcmu_global_max_pages));
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(tcmu_global_max_data_area_op,
@@ -265,11 +266,12 @@ MODULE_PARM_DESC(global_max_data_area_mb,
 		 "Max MBs allowed to be allocated to all the tcmu device's "
 		 "data areas.");
 
-static int tcmu_get_block_netlink(char *buffer,
+static int tcmu_get_block_netlink(struct seq_buf *buffer,
 				  const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n", tcmu_netlink_blocked ?
-		       "blocked" : "unblocked");
+	seq_buf_printf(buffer, "%s\n",
+		       tcmu_netlink_blocked ? "blocked" : "unblocked");
+	return 0;
 }
 
 static int tcmu_set_block_netlink(const char *str,
diff --git a/drivers/thermal/intel/int340x_thermal/processor_thermal_soc_slider.c b/drivers/thermal/intel/int340x_thermal/processor_thermal_soc_slider.c
index 68275c3f2c9b..1a68721748d9 100644
--- a/drivers/thermal/intel/int340x_thermal/processor_thermal_soc_slider.c
+++ b/drivers/thermal/intel/int340x_thermal/processor_thermal_soc_slider.c
@@ -77,10 +77,12 @@ static int slider_def_balance_set(const char *arg, const struct kernel_param *kp
 	return ret;
 }
 
-static int slider_def_balance_get(char *buf, const struct kernel_param *kp)
+static int slider_def_balance_get(struct seq_buf *buf,
+				  const struct kernel_param *kp)
 {
 	guard(mutex)(&slider_param_lock);
-	return sysfs_emit(buf, "%02x\n", slider_values[SOC_POWER_SLIDER_BALANCE]);
+	seq_buf_printf(buf, "%02x\n", slider_values[SOC_POWER_SLIDER_BALANCE]);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(slider_def_balance_ops, slider_def_balance_set,
@@ -109,10 +111,12 @@ static int slider_def_offset_set(const char *arg, const struct kernel_param *kp)
 	return ret;
 }
 
-static int slider_def_offset_get(char *buf, const struct kernel_param *kp)
+static int slider_def_offset_get(struct seq_buf *buf,
+				 const struct kernel_param *kp)
 {
 	guard(mutex)(&slider_param_lock);
-	return sysfs_emit(buf, "%02x\n", slider_offset);
+	seq_buf_printf(buf, "%02x\n", slider_offset);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(slider_offset_ops, slider_def_offset_set,
diff --git a/drivers/ufs/core/ufs-fault-injection.c b/drivers/ufs/core/ufs-fault-injection.c
index 7d2873da7dc5..88f348b41614 100644
--- a/drivers/ufs/core/ufs-fault-injection.c
+++ b/drivers/ufs/core/ufs-fault-injection.c
@@ -8,7 +8,7 @@
 #include <ufs/ufshcd.h>
 #include "ufs-fault-injection.h"
 
-static int ufs_fault_get(char *buffer, const struct kernel_param *kp);
+static int ufs_fault_get(struct seq_buf *buffer, const struct kernel_param *kp);
 static int ufs_fault_set(const char *val, const struct kernel_param *kp);
 
 static DEFINE_KERNEL_PARAM_OPS(ufs_fault_ops, ufs_fault_set, ufs_fault_get);
@@ -31,11 +31,12 @@ MODULE_PARM_DESC(timeout,
 	"Fault injection. timeout=<interval>,<probability>,<space>,<times>");
 static DECLARE_FAULT_ATTR(ufs_timeout_attr);
 
-static int ufs_fault_get(char *buffer, const struct kernel_param *kp)
+static int ufs_fault_get(struct seq_buf *buffer, const struct kernel_param *kp)
 {
 	const char *fault_str = kp->arg;
 
-	return sysfs_emit(buffer, "%s\n", fault_str);
+	seq_buf_printf(buffer, "%s\n", fault_str);
+	return 0;
 }
 
 static int ufs_fault_set(const char *val, const struct kernel_param *kp)
diff --git a/drivers/vhost/scsi.c b/drivers/vhost/scsi.c
index fd52f2213e27..23ca63ebf3d2 100644
--- a/drivers/vhost/scsi.c
+++ b/drivers/vhost/scsi.c
@@ -81,10 +81,11 @@ static int vhost_scsi_set_inline_sg_cnt(const char *buf,
 }
 #endif
 
-static int vhost_scsi_get_inline_sg_cnt(char *buf,
+static int vhost_scsi_get_inline_sg_cnt(struct seq_buf *buf,
 					const struct kernel_param *kp)
 {
-	return sprintf(buf, "%u\n", vhost_scsi_inline_sg_cnt);
+	seq_buf_printf(buf, "%u\n", vhost_scsi_inline_sg_cnt);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(vhost_scsi_inline_sg_cnt_op,
diff --git a/fs/nfs/namespace.c b/fs/nfs/namespace.c
index f2fba60dc5ed..5b7debe5274b 100644
--- a/fs/nfs/namespace.c
+++ b/fs/nfs/namespace.c
@@ -358,7 +358,8 @@ static int param_set_nfs_timeout(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int param_get_nfs_timeout(char *buffer, const struct kernel_param *kp)
+static int param_get_nfs_timeout(struct seq_buf *buffer,
+				 const struct kernel_param *kp)
 {
 	long num = *((int *)kp->arg);
 
@@ -369,7 +370,8 @@ static int param_get_nfs_timeout(char *buffer, const struct kernel_param *kp)
 			num = (num + (HZ - 1)) / HZ;
 	} else
 		num = -1;
-	return sysfs_emit(buffer, "%li\n", num);
+	seq_buf_printf(buffer, "%li\n", num);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(param_ops_nfs_timeout, param_set_nfs_timeout,
diff --git a/fs/ocfs2/dlmfs/dlmfs.c b/fs/ocfs2/dlmfs/dlmfs.c
index 5821e33df78f..8fd759d31ff9 100644
--- a/fs/ocfs2/dlmfs/dlmfs.c
+++ b/fs/ocfs2/dlmfs/dlmfs.c
@@ -78,10 +78,11 @@ static int param_set_dlmfs_capabilities(const char *val,
 	printk(KERN_ERR "%s: readonly parameter\n", kp->name);
 	return -EINVAL;
 }
-static int param_get_dlmfs_capabilities(char *buffer,
+static int param_get_dlmfs_capabilities(struct seq_buf *buffer,
 					const struct kernel_param *kp)
 {
-	return sysfs_emit(buffer, DLMFS_CAPABILITIES);
+	seq_buf_printf(buffer, DLMFS_CAPABILITIES);
+	return 0;
 }
 module_param_call(capabilities, param_set_dlmfs_capabilities,
 		  param_get_dlmfs_capabilities, NULL, 0444);
diff --git a/fs/overlayfs/copy_up.c b/fs/overlayfs/copy_up.c
index 13cb60b52bd6..d9a21b813b4f 100644
--- a/fs/overlayfs/copy_up.c
+++ b/fs/overlayfs/copy_up.c
@@ -28,9 +28,10 @@ static int ovl_ccup_set(const char *buf, const struct kernel_param *param)
 	return 0;
 }
 
-static int ovl_ccup_get(char *buf, const struct kernel_param *param)
+static int ovl_ccup_get(struct seq_buf *buf, const struct kernel_param *param)
 {
-	return sprintf(buf, "N\n");
+	seq_buf_printf(buf, "N\n");
+	return 0;
 }
 
 module_param_call(check_copy_up, ovl_ccup_set, ovl_ccup_get, NULL, 0644);
diff --git a/kernel/locking/locktorture.c b/kernel/locking/locktorture.c
index 38ae3b596ef2..9c9b6dc25888 100644
--- a/kernel/locking/locktorture.c
+++ b/kernel/locking/locktorture.c
@@ -86,11 +86,13 @@ static int param_set_cpumask(const char *val, const struct kernel_param *kp)
 }
 
 // Output a cpumask kernel parameter.
-static int param_get_cpumask(char *buffer, const struct kernel_param *kp)
+static int param_get_cpumask(struct seq_buf *buffer,
+			     const struct kernel_param *kp)
 {
 	cpumask_var_t *cm_bind = kp->arg;
 
-	return sprintf(buffer, "%*pbl", cpumask_pr_args(*cm_bind));
+	seq_buf_printf(buffer, "%*pbl", cpumask_pr_args(*cm_bind));
+	return 0;
 }
 
 static bool cpumask_nonempty(cpumask_var_t mask)
diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
index e675d7f1b4ee..ffbbb7d4ff2a 100644
--- a/kernel/rcu/tree.c
+++ b/kernel/rcu/tree.c
@@ -3970,9 +3970,11 @@ static int param_set_do_rcu_barrier(const char *val, const struct kernel_param *
 /*
  * Output the number of outstanding rcutree.do_rcu_barrier requests.
  */
-static int param_get_do_rcu_barrier(char *buffer, const struct kernel_param *kp)
+static int param_get_do_rcu_barrier(struct seq_buf *buffer,
+				    const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%d\n", atomic_read((atomic_t *)kp->arg));
+	seq_buf_printf(buffer, "%d\n", atomic_read((atomic_t *)kp->arg));
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(do_rcu_barrier_ops, param_set_do_rcu_barrier,
diff --git a/kernel/workqueue.c b/kernel/workqueue.c
index 42562b811d94..3fe338d2ca64 100644
--- a/kernel/workqueue.c
+++ b/kernel/workqueue.c
@@ -7157,9 +7157,11 @@ static int wq_affn_dfl_set(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int wq_affn_dfl_get(char *buffer, const struct kernel_param *kp)
+static int wq_affn_dfl_get(struct seq_buf *buffer,
+			   const struct kernel_param *kp)
 {
-	return scnprintf(buffer, PAGE_SIZE, "%s\n", wq_affn_names[wq_affn_dfl]);
+	seq_buf_printf(buffer, "%s\n", wq_affn_names[wq_affn_dfl]);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(wq_affn_dfl_ops, wq_affn_dfl_set,
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index 30880b6c726a..70faf8ede76d 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -18,10 +18,12 @@ static int param_set_do_prints(const char *instr, const struct kernel_param *kp)
 	do_prints();
 	return 0;
 }
-static int param_get_do_prints(char *buffer, const struct kernel_param *kp)
+static int param_get_do_prints(struct seq_buf *buffer,
+			       const struct kernel_param *kp)
 {
 	do_prints();
-	return scnprintf(buffer, PAGE_SIZE, "did do_prints\n");
+	seq_buf_printf(buffer, "did do_prints\n");
+	return 0;
 }
 static DEFINE_KERNEL_PARAM_OPS(param_ops_do_prints, param_set_do_prints,
 			       param_get_do_prints);
diff --git a/mm/damon/lru_sort.c b/mm/damon/lru_sort.c
index 5feb93c5262e..84e607f76126 100644
--- a/mm/damon/lru_sort.c
+++ b/mm/damon/lru_sort.c
@@ -438,10 +438,11 @@ static int damon_lru_sort_enabled_store(const char *val,
 	return damon_lru_sort_turn(enabled);
 }
 
-static int damon_lru_sort_enabled_load(char *buffer,
-		const struct kernel_param *kp)
+static int damon_lru_sort_enabled_load(struct seq_buf *buffer,
+				       const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%c\n", damon_lru_sort_enabled() ? 'Y' : 'N');
+	seq_buf_printf(buffer, "%c\n", damon_lru_sort_enabled() ? 'Y' : 'N');
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(enabled_param_ops, damon_lru_sort_enabled_store,
@@ -461,8 +462,8 @@ static int damon_lru_sort_kdamond_pid_store(const char *val,
 	return 0;
 }
 
-static int damon_lru_sort_kdamond_pid_load(char *buffer,
-		const struct kernel_param *kp)
+static int damon_lru_sort_kdamond_pid_load(struct seq_buf *buffer,
+					   const struct kernel_param *kp)
 {
 	int kdamond_pid = -1;
 
@@ -471,7 +472,8 @@ static int damon_lru_sort_kdamond_pid_load(char *buffer,
 		if (kdamond_pid < 0)
 			kdamond_pid = -1;
 	}
-	return sprintf(buffer, "%d\n", kdamond_pid);
+	seq_buf_printf(buffer, "%d\n", kdamond_pid);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(kdamond_pid_param_ops,
diff --git a/mm/damon/reclaim.c b/mm/damon/reclaim.c
index 27e772b095fa..546bdf356a40 100644
--- a/mm/damon/reclaim.c
+++ b/mm/damon/reclaim.c
@@ -340,10 +340,11 @@ static int damon_reclaim_enabled_store(const char *val,
 	return damon_reclaim_turn(enabled);
 }
 
-static int damon_reclaim_enabled_load(char *buffer,
-		const struct kernel_param *kp)
+static int damon_reclaim_enabled_load(struct seq_buf *buffer,
+				      const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%c\n", damon_reclaim_enabled() ? 'Y' : 'N');
+	seq_buf_printf(buffer, "%c\n", damon_reclaim_enabled() ? 'Y' : 'N');
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(enabled_param_ops, damon_reclaim_enabled_store,
@@ -363,8 +364,8 @@ static int damon_reclaim_kdamond_pid_store(const char *val,
 	return 0;
 }
 
-static int damon_reclaim_kdamond_pid_load(char *buffer,
-		const struct kernel_param *kp)
+static int damon_reclaim_kdamond_pid_load(struct seq_buf *buffer,
+					  const struct kernel_param *kp)
 {
 	int kdamond_pid = -1;
 
@@ -373,7 +374,8 @@ static int damon_reclaim_kdamond_pid_load(char *buffer,
 		if (kdamond_pid < 0)
 			kdamond_pid = -1;
 	}
-	return sprintf(buffer, "%d\n", kdamond_pid);
+	seq_buf_printf(buffer, "%d\n", kdamond_pid);
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(kdamond_pid_param_ops,
diff --git a/mm/damon/stat.c b/mm/damon/stat.c
index 6eb548793802..70d6b477fc0b 100644
--- a/mm/damon/stat.c
+++ b/mm/damon/stat.c
@@ -19,8 +19,8 @@
 static int damon_stat_enabled_store(
 		const char *val, const struct kernel_param *kp);
 
-static int damon_stat_enabled_load(char *buffer,
-		const struct kernel_param *kp);
+static int damon_stat_enabled_load(struct seq_buf *buffer,
+				   const struct kernel_param *kp);
 
 static DEFINE_KERNEL_PARAM_OPS(enabled_param_ops, damon_stat_enabled_store,
 			       damon_stat_enabled_load);
@@ -306,9 +306,11 @@ static int damon_stat_enabled_store(
 	return 0;
 }
 
-static int damon_stat_enabled_load(char *buffer, const struct kernel_param *kp)
+static int damon_stat_enabled_load(struct seq_buf *buffer,
+				   const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%c\n", damon_stat_enabled() ? 'Y' : 'N');
+	seq_buf_printf(buffer, "%c\n", damon_stat_enabled() ? 'Y' : 'N');
+	return 0;
 }
 
 static int __init damon_stat_init(void)
diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 42e0cf313281..887c18a193ac 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -100,13 +100,17 @@ static int set_memmap_mode(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int get_memmap_mode(char *buffer, const struct kernel_param *kp)
+static int get_memmap_mode(struct seq_buf *buffer,
+			   const struct kernel_param *kp)
 {
 	int mode = *((int *)kp->arg);
 
-	if (mode == MEMMAP_ON_MEMORY_FORCE)
-		return sprintf(buffer, "force\n");
-	return sprintf(buffer, "%c\n", mode ? 'Y' : 'N');
+	if (mode == MEMMAP_ON_MEMORY_FORCE) {
+		seq_buf_printf(buffer, "force\n");
+		return 0;
+	}
+	seq_buf_printf(buffer, "%c\n", mode ? 'Y' : 'N');
+	return 0;
 }
 
 static DEFINE_KERNEL_PARAM_OPS(memmap_mode_ops, set_memmap_mode,
@@ -147,9 +151,11 @@ static int set_online_policy(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int get_online_policy(char *buffer, const struct kernel_param *kp)
+static int get_online_policy(struct seq_buf *buffer,
+			     const struct kernel_param *kp)
 {
-	return sprintf(buffer, "%s\n", online_policy_to_str[*((int *)kp->arg)]);
+	seq_buf_printf(buffer, "%s\n", online_policy_to_str[*((int *)kp->arg)]);
+	return 0;
 }
 
 /*
diff --git a/net/ceph/ceph_common.c b/net/ceph/ceph_common.c
index 633202a99e4a..583b11a2489c 100644
--- a/net/ceph/ceph_common.c
+++ b/net/ceph/ceph_common.c
@@ -47,10 +47,11 @@ bool libceph_compatible(void *data)
 }
 EXPORT_SYMBOL(libceph_compatible);
 
-static int param_get_supported_features(char *buffer,
+static int param_get_supported_features(struct seq_buf *buffer,
 					const struct kernel_param *kp)
 {
-	return sprintf(buffer, "0x%llx", CEPH_FEATURES_SUPPORTED_DEFAULT);
+	seq_buf_printf(buffer, "0x%llx", CEPH_FEATURES_SUPPORTED_DEFAULT);
+	return 0;
 }
 static DEFINE_KERNEL_PARAM_OPS(param_ops_supported_features, NULL,
 			       param_get_supported_features);
diff --git a/net/sunrpc/auth.c b/net/sunrpc/auth.c
index 64a3e894fd4c..5a2b64dcf9e5 100644
--- a/net/sunrpc/auth.c
+++ b/net/sunrpc/auth.c
@@ -73,12 +73,14 @@ static int param_set_hashtbl_sz(const char *val, const struct kernel_param *kp)
 	return -EINVAL;
 }
 
-static int param_get_hashtbl_sz(char *buffer, const struct kernel_param *kp)
+static int param_get_hashtbl_sz(struct seq_buf *buffer,
+				const struct kernel_param *kp)
 {
 	unsigned int nbits;
 
 	nbits = *(unsigned int *)kp->arg;
-	return sprintf(buffer, "%u\n", 1U << nbits);
+	seq_buf_printf(buffer, "%u\n", 1U << nbits);
+	return 0;
 }
 
 #define param_check_hashtbl_sz(name, p) __param_check(name, p, unsigned int);
diff --git a/net/sunrpc/svc.c b/net/sunrpc/svc.c
index 576fa42e7abf..26b85077ecc8 100644
--- a/net/sunrpc/svc.c
+++ b/net/sunrpc/svc.c
@@ -148,7 +148,7 @@ sunrpc_get_pool_mode(char *buf, size_t size)
 EXPORT_SYMBOL(sunrpc_get_pool_mode);
 
 static int
-param_get_pool_mode(char *buf, const struct kernel_param *kp)
+param_get_pool_mode(struct seq_buf *buf, const struct kernel_param *kp)
 {
 	char str[16];
 	int len;
@@ -162,7 +162,8 @@ param_get_pool_mode(char *buf, const struct kernel_param *kp)
 	str[len] = '\n';
 	str[len + 1] = '\0';
 
-	return sysfs_emit(buf, "%s", str);
+	seq_buf_printf(buf, "%s", str);
+	return 0;
 }
 
 module_param_call(pool_mode, param_set_pool_mode, param_get_pool_mode,
diff --git a/security/apparmor/lsm.c b/security/apparmor/lsm.c
index a6815b4bd0da..748d08c57f60 100644
--- a/security/apparmor/lsm.c
+++ b/security/apparmor/lsm.c
@@ -1797,10 +1797,11 @@ static int param_set_debug(const char *val, const struct kernel_param *kp);
 static int param_get_debug(struct seq_buf *buffer, const struct kernel_param *kp);
 
 static int param_set_audit(const char *val, const struct kernel_param *kp);
-static int param_get_audit(char *buffer, const struct kernel_param *kp);
+static int param_get_audit(struct seq_buf *buffer,
+			   const struct kernel_param *kp);
 
 static int param_set_mode(const char *val, const struct kernel_param *kp);
-static int param_get_mode(char *buffer, const struct kernel_param *kp);
+static int param_get_mode(struct seq_buf *buffer, const struct kernel_param *kp);
 
 /* Flag values, also controllable via /sys/module/apparmor/parameters
  * We define special types as we want to do additional mediation.
@@ -2050,13 +2051,15 @@ static int param_set_debug(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int param_get_audit(char *buffer, const struct kernel_param *kp)
+static int param_get_audit(struct seq_buf *buffer,
+			   const struct kernel_param *kp)
 {
 	if (!apparmor_enabled)
 		return -EINVAL;
 	if (apparmor_initialized && !aa_current_policy_view_capable(NULL))
 		return -EPERM;
-	return sysfs_emit(buffer, "%s\n", audit_mode_names[aa_g_audit]);
+	seq_buf_printf(buffer, "%s\n", audit_mode_names[aa_g_audit]);
+	return 0;
 }
 
 static int param_set_audit(const char *val, const struct kernel_param *kp)
@@ -2078,13 +2081,14 @@ static int param_set_audit(const char *val, const struct kernel_param *kp)
 	return 0;
 }
 
-static int param_get_mode(char *buffer, const struct kernel_param *kp)
+static int param_get_mode(struct seq_buf *buffer, const struct kernel_param *kp)
 {
 	if (!apparmor_enabled)
 		return -EINVAL;
 	if (apparmor_initialized && !aa_current_policy_view_capable(NULL))
 		return -EPERM;
-	return sysfs_emit(buffer, "%s\n", aa_profile_mode_names[aa_g_profile_mode]);
+	seq_buf_printf(buffer, "%s\n", aa_profile_mode_names[aa_g_profile_mode]);
+	return 0;
 }
 
 static int param_set_mode(const char *val, const struct kernel_param *kp)
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHbRNs8TD2otFAYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:47 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B2A5A70B1
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gELBdrGDTuNq1YF03P9crLMdZIDsMowx/dbadurS8Xg=; b=fZzGQx1FT4UlA+QJbNIO+UWWjM
	WK4NZl1OyhAWNb9lJVceE76X20ZqhZ3GL+wdiu9VIRngwWdGpfWoGrLj6Jeo2Ugy7de9g8/LDSEBd
	OQ5eJX0zZHW5nPabtl8C6lShDDAJq0M3g0xUDwN7kJ13h1m88WBW1Zs9RrOOMMp9rLuo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wQ4CV-0002hB-Kc;
	Thu, 21 May 2026 14:16:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kees@kernel.org>) id 1wQ3Wy-0001fc-Je
 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mj7DVCvMStdFPb34OrcUAAH1hWW4OYzU+C7hp9VpbjY=; b=TX7wWn4LJdCoxlRjxs8yWUmQZ3
 +Pu6ML8y7AbSbKxqSNM1swIVma9+Obpy9y02Z4aJ+oThPgbndwbCEyEqsWyJ6kaYZt4hVj9Nhf0mm
 vk3b/OMVypE5IqI8IMx6BbNU0Yccsjt9BY680z/xNmhgmTV+l+AE9ERnO8Q4QkPUhj9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mj7DVCvMStdFPb34OrcUAAH1hWW4OYzU+C7hp9VpbjY=; b=BZoiZ6r5SUMhkt6RR78u7amL3B
 YasoQdXTfI80vuRCjfPKqivaM3SZ+s2Oq6ytNOaNCtJN7RO+/Wo3CiPL46FqyIGtQzo1bPt0pcnOT
 5LYoXc8BRnbbBzU5u1J9Ii5g706sNU+NQ1qaz7qE0UsfRPV93Ol47aHuFVQzqzCgs5Qg=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wQ3Wv-0004Ot-HI for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 2B203445E1;
 Thu, 21 May 2026 13:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D38751F00A3E;
 Thu, 21 May 2026 13:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1779370406;
 bh=Mj7DVCvMStdFPb34OrcUAAH1hWW4OYzU+C7hp9VpbjY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eL7P5sQOnRUqovuCINXrhkkCMFQg4gJz9lHl+mo5l/7tWzuLIYX1MykUtmft4cIo2
 M+FcdXMoQ4rswOfqo73Od6nx4/NZcLe4hChmGlU7e8EHcktUR9bbKkyMDXjIyfyf9B
 eV78dkZWgUFtYC1qxRKZKBtpzjNh1YNv+xYbvGb/59goFKFuu3NOIeGjgRpvSgtIPo
 8ivmmDGfUlUajD9Xi2Zb0jv40IpLIkZ1zlVqLGUDtdGxm942GdK2191iVOUAdgY/d9
 LkEDqWs4BcK2jEMPeiyQHLfliXA1m2lVAX62EVolUfTIC9T8HiuTytz5hngxpheUFV
 LHEYk2tMnbFvw==
To: Luis Chamberlain <mcgrof@kernel.org>
Date: Thu, 21 May 2026 06:33:19 -0700
Message-Id: <20260521133326.2465264-6-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260521133315.work.845-kees@kernel.org>
References: <20260521133315.work.845-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3696; i=kees@kernel.org;
 h=from:subject; bh=T4N6FoAPN5e2cqvWSGS7oEs1xiLk99wdr1LKck0ur78=;
 b=owGbwMvMwCVmps19z/KJym7G02pJDFn8nIs2HH8iHuPEcem9X7HM2rJrS2LZVs8vP/M+reLdF
 K3trxtfdZSyMIhxMciKKbIE2bnHuXi8bQ93n6sIM4eVCWQIAxenAExEwZOR4alreLoXi13roV/i
 9/tfrbvsVLZZb2L3Qh33TS8N1v2/U8fwT//2x1KTz9OUg91P7LvT39NrdVL4qeIHRzc9ZcnAHRc
 /cgAA
X-Developer-Key: i=kees@kernel.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a new struct kernel_param_ops::get callback whose
 signature
 takes a struct seq_buf instead of a raw char buffer: int (*get)(struct seq_buf
 *sb, const struct kernel_param *kp); The previously-legacy .get field is
 now .get_str (char *buffer);
 .get is the new seq_buf-aware form. param_attr_show()
 prefers .get when set, otherwise falls back to .get_str. WARN_ON_ONCE() if
 both a [...] 
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
X-Headers-End: 1wQ3Wv-0004Ot-HI
X-Mailman-Approved-At: Thu, 21 May 2026 14:16:34 +0000
Subject: [Openipmi-developer] [PATCH 06/11] moduleparam: Add seq_buf-based
 .get callback alongside .get_str
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
X-Rspamd-Queue-Id: 79B2A5A70B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new struct kernel_param_ops::get callback whose signature
takes a struct seq_buf instead of a raw char buffer:

  int (*get)(struct seq_buf *sb, const struct kernel_param *kp);

The previously-legacy .get field is now .get_str (char *buffer);
.get is the new seq_buf-aware form.  param_attr_show() prefers .get
when set, otherwise falls back to .get_str.  WARN_ON_ONCE() if both
are set.  Return contract for .get:

  < 0 : errno propagated to userspace; seq_buf contents discarded
  = 0 : success; length derived from seq_buf_used()
  > 0 : forbidden; the dispatcher WARN_ON_ONCE()s and treats as 0

The default policy on seq_buf_has_overflowed() is silent truncation,
matching scnprintf()/sysfs_emit() behaviour.  Callbacks that want a
specific overflow errno can check seq_buf_has_overflowed() and
return their preferred error.

No callbacks use .get yet; the legacy path is still the only one in use
after this commit. A subsequent commit teaches DEFINE_KERNEL_PARAM_OPS
to route initializers by type.

Signed-off-by: Kees Cook <kees@kernel.org>
---
 include/linux/moduleparam.h | 13 ++++++++++++-
 kernel/params.c             | 26 ++++++++++++++++++++++++--
 2 files changed, 36 insertions(+), 3 deletions(-)

diff --git a/include/linux/moduleparam.h b/include/linux/moduleparam.h
index f5f4148e2504..c52120f6ac28 100644
--- a/include/linux/moduleparam.h
+++ b/include/linux/moduleparam.h
@@ -7,6 +7,7 @@
 #include <linux/build_bug.h>
 #include <linux/compiler.h>
 #include <linux/init.h>
+#include <linux/seq_buf.h>
 #include <linux/stringify.h>
 #include <linux/sysfs.h>
 #include <linux/types.h>
@@ -62,7 +63,17 @@ struct kernel_param_ops {
 	unsigned int flags;
 	/* Returns 0, or -errno.  arg is in kp->arg. */
 	int (*set)(const char *val, const struct kernel_param *kp);
-	/* Returns length written or -errno.  Buffer is 4k (ie. be short!) */
+	/*
+	 * Format the parameter's value into @s.  Return 0 on success
+	 * (length derived from seq_buf_used()) or -errno on error.
+	 * Exactly one of .get and .get_str should be set; the dispatcher
+	 * WARNs and prefers .get if both are.
+	 */
+	int (*get)(struct seq_buf *s, const struct kernel_param *kp);
+	/*
+	 * Returns length written or -errno.  Buffer is 4k (ie. be short!).
+	 * Deprecated: callbacks should implement .get instead.
+	 */
 	int (*get_str)(char *buffer, const struct kernel_param *kp);
 	/* Optional function to free kp->arg when module unloaded. */
 	void (*free)(void *arg);
diff --git a/kernel/params.c b/kernel/params.c
index 6852caea1785..4eda2d23ddf2 100644
--- a/kernel/params.c
+++ b/kernel/params.c
@@ -553,12 +553,34 @@ static ssize_t param_attr_show(const struct module_attribute *mattr,
 {
 	int count;
 	const struct param_attribute *attribute = to_param_attr(mattr);
+	const struct kernel_param_ops *ops = attribute->param->ops;
 
-	if (!attribute->param->ops->get_str)
+	if (!ops->get && !ops->get_str)
 		return -EPERM;
 
+	WARN_ON_ONCE(ops->get && ops->get_str);
+
 	kernel_param_lock(mk->mod);
-	count = attribute->param->ops->get_str(buf, attribute->param);
+	if (ops->get) {
+		struct seq_buf s;
+
+		seq_buf_init(&s, buf, PAGE_SIZE);
+		count = ops->get(&s, attribute->param);
+		if (count >= 0) {
+			WARN_ON_ONCE(count > 0);
+			count = seq_buf_used(&s);
+			/* Make sure string is terminated. */
+			seq_buf_str(&s);
+			/*
+			 * If overflowed, reduce count by 1 for trailing
+			 * NUL byte.
+			 */
+			if (seq_buf_has_overflowed(&s))
+				count--;
+		}
+	} else {
+		count = ops->get_str(buf, attribute->param);
+	}
 	kernel_param_unlock(mk->mod);
 	return count;
 }
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MCEBM4TD2qOFAYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:46 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 576345A7096
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bGlPd/ZgPN3eTAsOFFKucb8CI0zRgJaLGdq7Ed1a2XQ=; b=lXNmdC+Fl9AivH30+pYuidQNiD
	fGUXx5/GVBXlnRPOrObnC5IHofi6OMpiL02+Dkk9N1yaQmBq4SWTdf3eZrcvYsokdQK3aaQq8xKFm
	YjUeZuXemPEFsYXoRPAQ73+YFJI6P5/m6O8qZg3Ls1ufQLAFAOMjXIzMQNYEClOVSvQ0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wQ4CT-0002fO-4W;
	Thu, 21 May 2026 14:16:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kees@kernel.org>) id 1wQ3Wp-0007RO-53
 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xIIxiknLSHVZBHNOKlLgNSXxWTGeUxPYBjk6/bNkxVs=; b=f8VNlw/Uy1SXy23UlEc1Sl+poR
 XMKqjcQh9g9VymQPzlwJcUS4Wbkd0yAeJ7MTuwj8DEpNTV/LB928DkoE8yPKThGFS1AwE+nKDta9j
 tIu7rSCmCSljFHg9r7YC1B6N5hN/V4D8VUGerhPPMMk7c1oth5q/88cxecmTJ/VaGQQg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xIIxiknLSHVZBHNOKlLgNSXxWTGeUxPYBjk6/bNkxVs=; b=fv5jEXuSmlyp5jHnCR2C92OYPJ
 xwjjYdd9qJQQWr1fGkJ0pwzApCC/i58RRtBg+6ua2pWzVKG+6NdcEraTI7N+d6pgBkL4zbBVA/7SL
 3GV2iVH1czGkN/bGxb7bRrLsa9HOFT1AMnibLa0+Y4v/6RapPLYcHjnG+I7XveffiZog=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wQ3Wn-0004OJ-V0 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id E19D34460C;
 Thu, 21 May 2026 13:33:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C9C71F0155A;
 Thu, 21 May 2026 13:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1779370406;
 bh=xIIxiknLSHVZBHNOKlLgNSXxWTGeUxPYBjk6/bNkxVs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=F7Ykfcvp0h6C12Jt7BShNBYGEpfAXvBIAx55A0+93dBwBTPwWMwDWRrO5isUznkhU
 itctVylBMPCseJ9S3+reU25bfhnxLGs81ROGkHDrSKeWpg/Rez1y63/E0p0lUE95MZ
 f/u4MnqyDBhhEHDleXISBtEDS8S6m8ZqoBy++9FLbj+QOoOdhCrl4GIXgLtDV0fnor
 mdHdAkA0VigFdnzXd0I0EUKIL42pTjUoBNZrx7zwWr/eWeE294mHLH60nGc7HBVsnN
 mHi84Fj8xXC12VUh1R1/Dg14UV22HTZGInV0oKdkocpJo9YXz5btVupLw70hiUfFNW
 gaqKIygTuUjnA==
To: Luis Chamberlain <mcgrof@kernel.org>
Date: Thu, 21 May 2026 06:33:16 -0700
Message-Id: <20260521133326.2465264-3-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260521133315.work.845-kees@kernel.org>
References: <20260521133315.work.845-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3674; i=kees@kernel.org;
 h=from:subject; bh=3qCwRbQEn6qV8q9ahXLM93O2aOukjHk7G2WsPfFNfHo=;
 b=owGbwMvMwCVmps19z/KJym7G02pJDFn8nAuull67+C5txg2e1YGCbPvcujb6Wx/JN/xsvCs3x
 vgezzqPjlIWBjEuBlkxRZYgO/c4F4+37eHucxVh5rAygQxh4OIUgIkYvWZkOH+4UFL72GLVDkfh
 BLNPz5NZzv2JWSzlWpkxwSTGt4VrNiPD9r2rxE49blEzn3CRa4uBQPBb6Zti6VkbO1blT5RSdFv
 EBQA=
X-Developer-Key: i=kees@kernel.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add macros that define a struct kernel_param_ops initializer
 through a macro so the underlying field layout can evolve without touching
 every call site. Three variants cover the three cases:
 DEFINE_KERNEL_PARAM_OPS(name, 
 set, get) // basic DEFINE_KERNEL_PARAM_OPS_NOARG(name, set,
 get) // set KERNEL_PARAM_OPS_FL_NOARG
 DEFINE_KERNEL_PARAM_OPS_FREE(name, set, get, free) // also set .free 
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
X-Headers-End: 1wQ3Wn-0004OJ-V0
X-Mailman-Approved-At: Thu, 21 May 2026 14:16:34 +0000
Subject: [Openipmi-developer] [PATCH 03/11] moduleparam: Add
 DEFINE_KERNEL_PARAM_OPS macro family
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
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
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
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,iscas.ac.cn,linux.intel.com,lists.one-eyed-alien.net,vger.kernel.org,acm.org,ziepe.ca,namei.org,googlegroups.com,ursulin.net,rowland.harvard.edu,lists.infradead.org,canonical.com,linuxfoundation.org,linux-foundation.org,arm.com,orcam.me.uk,HansenPartnership.com,ffwll.ch,linux.alibaba.com,paul-moore.com,cmu.edu,linux.ibm.com,akamai.com,google.com,gmail.com,redhat.com,ideasonboard.com,hallyn.com,suse.com,minyard.net,alien8.de,intel.com,lists.sourceforge.net,oracle.com,atomlin.com,infradead.org,zytor.com,nongnu.org,kvack.org,cambridgegreys.com,nod.at,lists.ubuntu.com,lists.linux.dev,suse.de,antgroup.com,sipsolutions.net,lists.ozlabs.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
X-Rspamd-Queue-Id: 576345A7096
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add macros that define a struct kernel_param_ops initializer through a
macro so the underlying field layout can evolve without touching every
call site. Three variants cover the three cases:

 DEFINE_KERNEL_PARAM_OPS(name, set, get) // basic
 DEFINE_KERNEL_PARAM_OPS_NOARG(name, set, get) // set KERNEL_PARAM_OPS_FL_NOARG
 DEFINE_KERNEL_PARAM_OPS_FREE(name, set, get, free) // also set .free

Callers prefix their own visibility qualifiers, e.g.:

  static DEFINE_KERNEL_PARAM_OPS(my_ops, my_set, my_get);

Also update module_param_call() and STANDARD_PARAM_DEF() to use
DEFINE_KERNEL_PARAM_OPS internally so the generated ops table will go
through the same macro as everything else.

Subsequent commits convert all open-coded struct kernel_param_ops
definitions to use these macros, in preparation for migrating to a
seq_buf .get API.

Signed-off-by: Kees Cook <kees@kernel.org>
---
 include/linux/moduleparam.h | 36 ++++++++++++++++++++++++++++++++++--
 kernel/params.c             |  6 ++----
 2 files changed, 36 insertions(+), 6 deletions(-)

diff --git a/include/linux/moduleparam.h b/include/linux/moduleparam.h
index 075f28585074..26bf45b36d02 100644
--- a/include/linux/moduleparam.h
+++ b/include/linux/moduleparam.h
@@ -68,6 +68,39 @@ struct kernel_param_ops {
 	void (*free)(void *arg);
 };
 
+/*
+ * Define a const struct kernel_param_ops initializer. Callers prefix with
+ * any required visibility qualifiers (typically "static"):
+ *
+ *   static DEFINE_KERNEL_PARAM_OPS(my_ops, my_set, my_get);
+ *
+ * Routing the @_set and @_get function pointers through the macro
+ * (rather than naming the struct fields at every call site) lets the
+ * field layout change in one place when callbacks are migrated to a
+ * new signature.
+ */
+#define DEFINE_KERNEL_PARAM_OPS(_name, _set, _get)			\
+	const struct kernel_param_ops _name = {				\
+		.set = (_set),						\
+		.get = (_get),						\
+	}
+
+/* As DEFINE_KERNEL_PARAM_OPS, with KERNEL_PARAM_OPS_FL_NOARG set. */
+#define DEFINE_KERNEL_PARAM_OPS_NOARG(_name, _set, _get)		\
+	const struct kernel_param_ops _name = {				\
+		.flags = KERNEL_PARAM_OPS_FL_NOARG,			\
+		.set = (_set),						\
+		.get = (_get),						\
+	}
+
+/* As DEFINE_KERNEL_PARAM_OPS, with an additional .free callback. */
+#define DEFINE_KERNEL_PARAM_OPS_FREE(_name, _set, _get, _free)		\
+	const struct kernel_param_ops _name = {				\
+		.set = (_set),						\
+		.get = (_get),						\
+		.free = (_free),					\
+	}
+
 /*
  * Flags available for kernel_param
  *
@@ -311,8 +344,7 @@ struct kparam_array
  * kernel_param_ops), use module_param_cb() instead.
  */
 #define module_param_call(name, _set, _get, arg, perm)			\
-	static const struct kernel_param_ops __param_ops_##name =	\
-		{ .flags = 0, .set = _set, .get = _get };		\
+	static DEFINE_KERNEL_PARAM_OPS(__param_ops_##name, _set, _get); \
 	__module_param_call(MODULE_PARAM_PREFIX,			\
 			    name, &__param_ops_##name, arg, perm, -1, 0)
 
diff --git a/kernel/params.c b/kernel/params.c
index 752721922a15..2cbad1f4dd06 100644
--- a/kernel/params.c
+++ b/kernel/params.c
@@ -222,10 +222,8 @@ char *parse_args(const char *doing,
 		return scnprintf(buffer, PAGE_SIZE, format "\n",	\
 				*((type *)kp->arg));			\
 	}								\
-	const struct kernel_param_ops param_ops_##name = {			\
-		.set = param_set_##name,				\
-		.get = param_get_##name,				\
-	};								\
+	DEFINE_KERNEL_PARAM_OPS(param_ops_##name,			\
+				param_set_##name, param_get_##name);	\
 	EXPORT_SYMBOL(param_set_##name);				\
 	EXPORT_SYMBOL(param_get_##name);				\
 	EXPORT_SYMBOL(param_ops_##name)
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

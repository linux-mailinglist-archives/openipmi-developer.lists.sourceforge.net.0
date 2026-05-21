Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKD6BNETD2qOFAYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:49 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 777915A70CA
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 16:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RB4kEf1xiz2G2htCYKdIBLvPHHBxjB1hnCY5OwWe+uI=; b=BbFVVygNhuC+2al4u2qEWhQ54K
	PDI6nYLbubSGlV0LNcsRDKyEXaA0miAMuoMc8j2uyfvB9j5FiVn9uvCcKItMN/qeDNbguKASslsMZ
	7Sra1j5HbfXXHFhAV6uopCbAB30KigeB+EelduYNCffzjeaQnD61ksa/icFSOS0oh1a8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wQ4CW-0002iM-WF;
	Thu, 21 May 2026 14:16:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kees@kernel.org>) id 1wQ3X3-0003pd-Cs
 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xwIDnz4Pf2a/0Wouv4cV1Bk8/fwt1/yHjZ8WyMRsm0E=; b=LZ6aXB+GwdPcsd0vUFlFxq15BH
 PrFTpPc2Ns6SSeMmfCEEM9LKIvhntEQ7XcfywjZYVo2aqoo7LRfV55rS37+evVprz5Wm5Tanxer/U
 HA/ik4BvAuJDb+OkRoy5cbVTs7e70XQHCjVmPlSzvoZlFPLcBWlkoB3gQyRurupEPzMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xwIDnz4Pf2a/0Wouv4cV1Bk8/fwt1/yHjZ8WyMRsm0E=; b=XasbNXqJ1N3aXnVYME8/Lnb22m
 JsrclNbfJYqUljs/97yjdpwTMfIxC2K3bPZmZlS0zR+fY8BPcn9OoUwONUC9/hmbLSmMe5T0BN2HS
 PZncAiqSasP+Tg0OFdMOAgS3PbU218s3keXqIhjan12bed6TWh7PVYqjG2D/bUffScDw=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wQ3X2-0004Pe-29 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 13:33:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 7322F44669;
 Thu, 21 May 2026 13:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FC0C1F01579;
 Thu, 21 May 2026 13:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1779370407;
 bh=xwIDnz4Pf2a/0Wouv4cV1Bk8/fwt1/yHjZ8WyMRsm0E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=faqBkEGM4aU15rBNkXIkUKRG5AsCe1S2Aewj2Tv1k/O0IFENHWQB9BDl0qYlYUXx1
 yoSYnXrOdkYgaAvt93OzOSpjQt1HbLSZILUsO+WwAhtrliX5J0FzgX8CuujFmAl5jz
 X8uTF9W4laMnV0lw73DuAepv0e1Z18zWI5AlF6sh7C8rwcqpQzvp1cimaV2in+YUgi
 OE4BwyWmDWxhcTmmdjqIRpFm9oVrWPKzXOPW22NTkxkdTVTWD9EOmYqsfX8zmiSFqR
 Z0nWrODWYXeXSYKufMtwTaK1WxYbFWleRdtaUyw1XtWk0UguQM98XV3sxBpbdWcKqK
 7ltRkG3vLauMQ==
To: Luis Chamberlain <mcgrof@kernel.org>
Date: Thu, 21 May 2026 06:33:24 -0700
Message-Id: <20260521133326.2465264-11-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260521133315.work.845-kees@kernel.org>
References: <20260521133315.work.845-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6078; i=kees@kernel.org;
 h=from:subject; bh=cZc+JELjQTK8ycLqZtLTkP9aHNuVqrWgrD/YlzSeCsM=;
 b=owGbwMvMwCVmps19z/KJym7G02pJDFn8nEvufDYVreO77zyVZ9nKv/dmtn67mvlTQuv4kafPq
 puKFFykO0pZGMS4GGTFFFmC7NzjXDzetoe7z1WEmcPKBDKEgYtTACZyUpThn+GuD2261nV35Y9v
 WCSkdjztcECEh/yOmilbnsu+Me2RqGb4X3Y7PuFYwqXlesy7khtcFv4xWB144Q33rOMlXKUF6Yq
 CDAA=
X-Developer-Key: i=kees@kernel.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: All struct kernel_param_ops .get callbacks have been migrated
 to using struct seq_buf. Drop the migration scaffolding. Signed-off-by: Kees
 Cook <kees@kernel.org> --- include/linux/moduleparam.h | 37 ++ kernel/params.c
 | 62 ++++++++++ 2 files changed, 20 insertions(+), 79 [...] 
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
X-Headers-End: 1wQ3X2-0004Pe-29
X-Mailman-Approved-At: Thu, 21 May 2026 14:16:35 +0000
Subject: [Openipmi-developer] [PATCH 11/11] moduleparam: Drop legacy
 kernel_param_ops .get_str field and dispatch logic
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,iscas.ac.cn,linux.intel.com,lists.one-eyed-alien.net,vger.kernel.org,acm.org,ziepe.ca,namei.org,googlegroups.com,ursulin.net,rowland.harvard.edu,lists.infradead.org,canonical.com,linuxfoundation.org,linux-foundation.org,arm.com,orcam.me.uk,HansenPartnership.com,ffwll.ch,linux.alibaba.com,paul-moore.com,cmu.edu,linux.ibm.com,akamai.com,google.com,gmail.com,redhat.com,ideasonboard.com,hallyn.com,suse.com,minyard.net,alien8.de,intel.com,lists.sourceforge.net,oracle.com,atomlin.com,infradead.org,zytor.com,nongnu.org,kvack.org,cambridgegreys.com,nod.at,lists.ubuntu.com,lists.linux.dev,suse.de,antgroup.com,sipsolutions.net,lists.ozlabs.org];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:mcgrof@kernel.org,m:rafael@kernel.org,m:dri-devel@lists.freedesktop.org,m:pengpeng@iscas.ac.cn,m:srinivas.pandruvada@linux.intel.com,m:usb-storage@lists.one-eyed-alien.net,m:linux-arch@vger.kernel.org,m:bvanassche@acm.org,m:jgg@ziepe.ca,m:jmorris@namei.org,m:kasan-dev@googlegroups.com,m:tursulin@ursulin.net,m:linux-acpi@vger.kernel.org,m:stern@rowland.harvard.edu,m:linux-pm@vger.kernel.org,m:linux-um@lists.infradead.org,m:georgia.garcia@canonical.com,m:gregkh@linuxfoundation.org,m:linux-usb@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:akpm@linux-foundation.org,m:linux-media@vger.kernel.org,m:lukasz.luba@arm.com,m:macro@orcam.me.uk,m:dave.hansen@linux.intel.com,m:James.Bottomley@HansenPartnership.com,m:simona@ffwll.ch,m:xuanzhuo@linux.alibaba.com,m:paul@paul-moore.com,m:leon@kernel.org,m:Frank.Li@kernel.org,m:somlo@cmu.edu,m:lenb@kernel.org,m:gor@linux.ibm.com,m:jani.nikula@linux.intel.com,m:jbaron@akamai.com,m:bhelgaas@go
 ogle.com,m:jim.cromie@gmail.com,m:seanjc@google.com,m:tglx@kernel.org,m:kees@kernel.org,m:linux-pci@vger.kernel.org,m:jasowang@redhat.com,m:joonas.lahtinen@linux.intel.com,m:laurent.pinchart@ideasonboard.com,m:david.e.box@linux.intel.com,m:jirislaby@kernel.org,m:linux-rdma@vger.kernel.org,m:samitolvanen@google.com,m:ilpo.jarvinen@linux.intel.com,m:serge@hallyn.com,m:elver@google.com,m:petr.pavlu@suse.com,m:intel-gfx@lists.freedesktop.org,m:corey@minyard.net,m:bp@alien8.de,m:rodrigo.vivi@intel.com,m:openipmi-developer@lists.sourceforge.net,m:mchehab@kernel.org,m:martin.petersen@oracle.com,m:atomlin@atomlin.com,m:hansg@kernel.org,m:kvm@vger.kernel.org,m:mst@redhat.com,m:peterz@infradead.org,m:hpa@zytor.com,m:qemu-devel@nongnu.org,m:linux-mm@kvack.org,m:glider@google.com,m:da.gomez@kernel.org,m:airlied@gmail.com,m:anton.ivanov@cambridgegreys.com,m:linux-scsi@vger.kernel.org,m:richard@nod.at,m:x86@kernel.org,m:linux-security-module@vger.kernel.org,m:eperezma@redhat.com,m:mingo@redhat.co
 m,m:linux-serial@vger.kernel.org,m:rui.zhang@intel.com,m:hca@linux.ibm.com,m:apparmor@lists.ubuntu.com,m:virtualization@lists.linux.dev,m:linux-hardening@vger.kernel.org,m:hare@suse.de,m:benjamin.berg@intel.com,m:daniel.lezcano@kernel.org,m:andriy.shevchenko@linux.intel.com,m:tiwei.btw@antgroup.com,m:dvyukov@google.com,m:john.johansen@canonical.com,m:netdev@vger.kernel.org,m:vkoul@kernel.org,m:dmaengine@vger.kernel.org,m:pbonzini@redhat.com,m:johannes@sipsolutions.net,m:linuxppc-dev@lists.ozlabs.org,m:linux-modules@vger.kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_GT_50(0.00)[99];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[kees@kernel.org];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Queue-Id: 777915A70CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

QWxsIHN0cnVjdCBrZXJuZWxfcGFyYW1fb3BzIC5nZXQgY2FsbGJhY2tzIGhhdmUgYmVlbiBtaWdy
YXRlZCB0byB1c2luZwpzdHJ1Y3Qgc2VxX2J1Zi4gRHJvcCB0aGUgbWlncmF0aW9uIHNjYWZmb2xk
aW5nLgoKU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzQGtlcm5lbC5vcmc+Ci0tLQogaW5j
bHVkZS9saW51eC9tb2R1bGVwYXJhbS5oIHwgMzcgKystLS0tLS0tLS0tLS0tLS0tLS0tLQoga2Vy
bmVsL3BhcmFtcy5jICAgICAgICAgICAgIHwgNjIgKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA3OSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21vZHVsZXBhcmFtLmggYi9pbmNsdWRl
L2xpbnV4L21vZHVsZXBhcmFtLmgKaW5kZXggMzhhY2I1YWVmNTZiLi5lNmFmNmYwNTFjOTMgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbW9kdWxlcGFyYW0uaAorKysgYi9pbmNsdWRlL2xpbnV4
L21vZHVsZXBhcmFtLmgKQEAgLTY2LDE1ICs2Niw4IEBAIHN0cnVjdCBrZXJuZWxfcGFyYW1fb3Bz
IHsKIAkvKgogCSAqIEZvcm1hdCB0aGUgcGFyYW1ldGVyJ3MgdmFsdWUgaW50byBAcy4gIFJldHVy
biAwIG9uIHN1Y2Nlc3MKIAkgKiAobGVuZ3RoIGRlcml2ZWQgZnJvbSBzZXFfYnVmX3VzZWQoKSkg
b3IgLWVycm5vIG9uIGVycm9yLgotCSAqIEV4YWN0bHkgb25lIG9mIC5nZXQgYW5kIC5nZXRfc3Ry
IHNob3VsZCBiZSBzZXQ7IHRoZSBkaXNwYXRjaGVyCi0JICogV0FSTnMgYW5kIHByZWZlcnMgLmdl
dCBpZiBib3RoIGFyZS4KIAkgKi8KIAlpbnQgKCpnZXQpKHN0cnVjdCBzZXFfYnVmICpzLCBjb25z
dCBzdHJ1Y3Qga2VybmVsX3BhcmFtICprcCk7Ci0JLyoKLQkgKiBSZXR1cm5zIGxlbmd0aCB3cml0
dGVuIG9yIC1lcnJuby4gIEJ1ZmZlciBpcyA0ayAoaWUuIGJlIHNob3J0ISkuCi0JICogRGVwcmVj
YXRlZDogY2FsbGJhY2tzIHNob3VsZCBpbXBsZW1lbnQgLmdldCBpbnN0ZWFkLgotCSAqLwotCWlu
dCAoKmdldF9zdHIpKGNoYXIgKmJ1ZmZlciwgY29uc3Qgc3RydWN0IGtlcm5lbF9wYXJhbSAqa3Ap
OwogCS8qIE9wdGlvbmFsIGZ1bmN0aW9uIHRvIGZyZWUga3AtPmFyZyB3aGVuIG1vZHVsZSB1bmxv
YWRlZC4gKi8KIAl2b2lkICgqZnJlZSkodm9pZCAqYXJnKTsKIH07CkBAIC04NCwzMyArNzcsMTEg
QEAgc3RydWN0IGtlcm5lbF9wYXJhbV9vcHMgewogICogYW55IHJlcXVpcmVkIHZpc2liaWxpdHkg
cXVhbGlmaWVycyAodHlwaWNhbGx5ICJzdGF0aWMiKToKICAqCiAgKiAgIHN0YXRpYyBERUZJTkVf
S0VSTkVMX1BBUkFNX09QUyhteV9vcHMsIG15X3NldCwgbXlfZ2V0KTsKLSAqCi0gKiBAX2dldCBt
YXkgYmUgZWl0aGVyIG9mOgotICogICBpbnQgKCopKHN0cnVjdCBzZXFfYnVmICosIGNvbnN0IHN0
cnVjdCBrZXJuZWxfcGFyYW0gKikgKHNlcV9idWYpCi0gKiAgIGludCAoKikoY2hhciAqLCBjb25z
dCBzdHJ1Y3Qga2VybmVsX3BhcmFtICopICAgICAgICAgICAobGVnYWN5KQotICoKLSAqIFRoZSBt
YWNybyB1c2VzIF9HZW5lcmljIHRvIHJvdXRlIHRoZSBmdW5jdGlvbiBwb2ludGVyIHRvIHRoZQot
ICogbWF0Y2hpbmcgZmllbGQgKC5nZXQgb3IgLmdldF9zdHIpIGF0IGNvbXBpbGUgdGltZSwgbGVh
dmluZyB0aGUKLSAqIG90aGVyIGZpZWxkIE5VTEwuIEVhY2ggaGVscGVyIG1hdGNoZXMgdGhlIHdy
b25nIHByb3RvdHlwZSBzaWduYXR1cmUKLSAqIGFuZCByZXR1cm5zIE5VTEwsIGZhbGxpbmcgdGhy
b3VnaCB0byB0aGUgZGVmYXVsdCBicmFuY2ggb3RoZXJ3aXNlOwotICogaWYgQF9nZXQgaGFzIG5l
aXRoZXIgZXhwZWN0ZWQgc2lnbmF0dXJlIHRoZSBhc3NpZ25tZW50IHRvIHRoZQotICogZmllbGRz
IGdldHMgYSBub3JtYWwgY29tcGlsZS10aW1lIHR5cGUtbWlzbWF0Y2ggZXJyb3IuCiAgKi8KLSNk
ZWZpbmUgX0tFUk5FTF9QQVJBTV9PUFNfR0VUKF9nZXQpCQkJCQlcCi0JX0dlbmVyaWMoKF9nZXQp
LAkJCQkJCVwKLQkgICAgaW50ICgqKShjaGFyICosIGNvbnN0IHN0cnVjdCBrZXJuZWxfcGFyYW0g
Kik6IE5VTEwsCQlcCi0JICAgIGRlZmF1bHQ6IChfZ2V0KSkKLQotI2RlZmluZSBfS0VSTkVMX1BB
UkFNX09QU19HRVRfU1RSKF9nZXQpCQkJCQlcCi0JX0dlbmVyaWMoKF9nZXQpLAkJCQkJCVwKLQkg
ICAgaW50ICgqKShzdHJ1Y3Qgc2VxX2J1ZiAqLCBjb25zdCBzdHJ1Y3Qga2VybmVsX3BhcmFtICop
OiBOVUxMLCBcCi0JICAgIGRlZmF1bHQ6IChfZ2V0KSkKLQogI2RlZmluZSBERUZJTkVfS0VSTkVM
X1BBUkFNX09QUyhfbmFtZSwgX3NldCwgX2dldCkJCQlcCiAJY29uc3Qgc3RydWN0IGtlcm5lbF9w
YXJhbV9vcHMgX25hbWUgPSB7CQkJCVwKIAkJLnNldCA9IChfc2V0KSwJCQkJCQlcCi0JCS5nZXQg
PSBfS0VSTkVMX1BBUkFNX09QU19HRVQoX2dldCksCQkJXAotCQkuZ2V0X3N0ciA9IF9LRVJORUxf
UEFSQU1fT1BTX0dFVF9TVFIoX2dldCksCQlcCisJCS5nZXQgPSAoX2dldCksCQkJCQkJXAogCX0K
IAogLyogQXMgREVGSU5FX0tFUk5FTF9QQVJBTV9PUFMsIHdpdGggS0VSTkVMX1BBUkFNX09QU19G
TF9OT0FSRyBzZXQuICovCkBAIC0xMTgsMTYgKzg5LDE0IEBAIHN0cnVjdCBrZXJuZWxfcGFyYW1f
b3BzIHsKIAljb25zdCBzdHJ1Y3Qga2VybmVsX3BhcmFtX29wcyBfbmFtZSA9IHsJCQkJXAogCQku
ZmxhZ3MgPSBLRVJORUxfUEFSQU1fT1BTX0ZMX05PQVJHLAkJCVwKIAkJLnNldCA9IChfc2V0KSwJ
CQkJCQlcCi0JCS5nZXQgPSBfS0VSTkVMX1BBUkFNX09QU19HRVQoX2dldCksCQkJXAotCQkuZ2V0
X3N0ciA9IF9LRVJORUxfUEFSQU1fT1BTX0dFVF9TVFIoX2dldCksCQlcCisJCS5nZXQgPSAoX2dl
dCksCQkJCQkJXAogCX0KIAogLyogQXMgREVGSU5FX0tFUk5FTF9QQVJBTV9PUFMsIHdpdGggYW4g
YWRkaXRpb25hbCAuZnJlZSBjYWxsYmFjay4gKi8KICNkZWZpbmUgREVGSU5FX0tFUk5FTF9QQVJB
TV9PUFNfRlJFRShfbmFtZSwgX3NldCwgX2dldCwgX2ZyZWUpCQlcCiAJY29uc3Qgc3RydWN0IGtl
cm5lbF9wYXJhbV9vcHMgX25hbWUgPSB7CQkJCVwKIAkJLnNldCA9IChfc2V0KSwJCQkJCQlcCi0J
CS5nZXQgPSBfS0VSTkVMX1BBUkFNX09QU19HRVQoX2dldCksCQkJXAotCQkuZ2V0X3N0ciA9IF9L
RVJORUxfUEFSQU1fT1BTX0dFVF9TVFIoX2dldCksCQlcCisJCS5nZXQgPSAoX2dldCksCQkJCQkJ
XAogCQkuZnJlZSA9IChfZnJlZSksCQkJCQlcCiAJfQogCmRpZmYgLS1naXQgYS9rZXJuZWwvcGFy
YW1zLmMgYi9rZXJuZWwvcGFyYW1zLmMKaW5kZXggMjVmMGM4ZDVkMTlmLi42YjQxMDE4OTI5N2Ig
MTAwNjQ0Ci0tLSBhL2tlcm5lbC9wYXJhbXMuYworKysgYi9rZXJuZWwvcGFyYW1zLmMKQEAgLTQ2
MSw4ICs0NjEsNyBAQCBzdGF0aWMgaW50IHBhcmFtX2FycmF5X2dldChzdHJ1Y3Qgc2VxX2J1ZiAq
cywgY29uc3Qgc3RydWN0IGtlcm5lbF9wYXJhbSAqa3ApCiB7CiAJY29uc3Qgc3RydWN0IGtwYXJh
bV9hcnJheSAqYXJyID0ga3AtPmFycjsKIAlzdHJ1Y3Qga2VybmVsX3BhcmFtIHAgPSAqa3A7Ci0J
Y2hhciAqZWxlbV9idWYgPSBOVUxMOwotCWludCBpLCByZXQgPSAwOworCWludCBpLCByZXQ7CiAK
IAlmb3IgKGkgPSAwOyBpIDwgKGFyci0+bnVtID8gKmFyci0+bnVtIDogYXJyLT5tYXgpOyBpKysp
IHsKIAkJc2l6ZV90IGJlZm9yZSA9IHMtPmxlbjsKQEAgLTQ3MCwyMyArNDY5LDkgQEAgc3RhdGlj
IGludCBwYXJhbV9hcnJheV9nZXQoc3RydWN0IHNlcV9idWYgKnMsIGNvbnN0IHN0cnVjdCBrZXJu
ZWxfcGFyYW0gKmtwKQogCQlwLmFyZyA9IGFyci0+ZWxlbSArIGFyci0+ZWxlbXNpemUgKiBpOwog
CQljaGVja19rcGFyYW1fbG9ja2VkKHAubW9kKTsKIAotCQlpZiAoYXJyLT5vcHMtPmdldCkgewot
CQkJcmV0ID0gYXJyLT5vcHMtPmdldChzLCAmcCk7Ci0JCQlpZiAocmV0IDwgMCkKLQkJCQlnb3Rv
IG91dDsKLQkJfSBlbHNlIHsKLQkJCWlmICghZWxlbV9idWYpIHsKLQkJCQllbGVtX2J1ZiA9IGtt
YWxsb2MoUEFHRV9TSVpFLCBHRlBfS0VSTkVMKTsKLQkJCQlpZiAoIWVsZW1fYnVmKSB7Ci0JCQkJ
CXJldCA9IC1FTk9NRU07Ci0JCQkJCWdvdG8gb3V0OwotCQkJCX0KLQkJCX0KLQkJCXJldCA9IGFy
ci0+b3BzLT5nZXRfc3RyKGVsZW1fYnVmLCAmcCk7Ci0JCQlpZiAocmV0IDwgMCkKLQkJCQlnb3Rv
IG91dDsKLQkJCXNlcV9idWZfcHV0bWVtKHMsIGVsZW1fYnVmLCByZXQpOwotCQl9CisJCXJldCA9
IGFyci0+b3BzLT5nZXQocywgJnApOworCQlpZiAocmV0IDwgMCkKKwkJCXJldHVybiByZXQ7CiAK
IAkJLyogTm90aGluZyBnb3Qgd3JpdHRlbiAoZS5nLiBvdmVyZmxvdykg4oCUIHN0b3AuICovCiAJ
CWlmIChzLT5sZW4gPT0gYmVmb3JlKQpAQCAtNDk2LDEwICs0ODEsNyBAQCBzdGF0aWMgaW50IHBh
cmFtX2FycmF5X2dldChzdHJ1Y3Qgc2VxX2J1ZiAqcywgY29uc3Qgc3RydWN0IGtlcm5lbF9wYXJh
bSAqa3ApCiAJCWlmIChpICYmIHMtPmJ1ZmZlcltiZWZvcmUgLSAxXSA9PSAnXG4nKQogCQkJcy0+
YnVmZmVyW2JlZm9yZSAtIDFdID0gJywnOwogCX0KLQlyZXQgPSAwOwotb3V0OgotCWtmcmVlKGVs
ZW1fYnVmKTsKLQlyZXR1cm4gcmV0OworCXJldHVybiAwOwogfQogCiBzdGF0aWMgdm9pZCBwYXJh
bV9hcnJheV9mcmVlKHZvaWQgKmFyZykKQEAgLTU3MCwzMiArNTUyLDIyIEBAIHN0YXRpYyBzc2l6
ZV90IHBhcmFtX2F0dHJfc2hvdyhjb25zdCBzdHJ1Y3QgbW9kdWxlX2F0dHJpYnV0ZSAqbWF0dHIs
CiAJaW50IGNvdW50OwogCWNvbnN0IHN0cnVjdCBwYXJhbV9hdHRyaWJ1dGUgKmF0dHJpYnV0ZSA9
IHRvX3BhcmFtX2F0dHIobWF0dHIpOwogCWNvbnN0IHN0cnVjdCBrZXJuZWxfcGFyYW1fb3BzICpv
cHMgPSBhdHRyaWJ1dGUtPnBhcmFtLT5vcHM7CisJc3RydWN0IHNlcV9idWYgczsKIAotCWlmICgh
b3BzLT5nZXQgJiYgIW9wcy0+Z2V0X3N0cikKKwlpZiAoIW9wcy0+Z2V0KQogCQlyZXR1cm4gLUVQ
RVJNOwogCi0JV0FSTl9PTl9PTkNFKG9wcy0+Z2V0ICYmIG9wcy0+Z2V0X3N0cik7Ci0KIAlrZXJu
ZWxfcGFyYW1fbG9jayhtay0+bW9kKTsKLQlpZiAob3BzLT5nZXQpIHsKLQkJc3RydWN0IHNlcV9i
dWYgczsKLQotCQlzZXFfYnVmX2luaXQoJnMsIGJ1ZiwgUEFHRV9TSVpFKTsKLQkJY291bnQgPSBv
cHMtPmdldCgmcywgYXR0cmlidXRlLT5wYXJhbSk7Ci0JCWlmIChjb3VudCA+PSAwKSB7Ci0JCQlX
QVJOX09OX09OQ0UoY291bnQgPiAwKTsKLQkJCWNvdW50ID0gc2VxX2J1Zl91c2VkKCZzKTsKLQkJ
CS8qIE1ha2Ugc3VyZSBzdHJpbmcgaXMgdGVybWluYXRlZC4gKi8KLQkJCXNlcV9idWZfc3RyKCZz
KTsKLQkJCS8qCi0JCQkgKiBJZiBvdmVyZmxvd2VkLCByZWR1Y2UgY291bnQgYnkgMSBmb3IgdHJh
aWxpbmcKLQkJCSAqIE5VTCBieXRlLgotCQkJICovCi0JCQlpZiAoc2VxX2J1Zl9oYXNfb3ZlcmZs
b3dlZCgmcykpCi0JCQkJY291bnQtLTsKLQkJfQotCX0gZWxzZSB7Ci0JCWNvdW50ID0gb3BzLT5n
ZXRfc3RyKGJ1ZiwgYXR0cmlidXRlLT5wYXJhbSk7CisJc2VxX2J1Zl9pbml0KCZzLCBidWYsIFBB
R0VfU0laRSk7CisJY291bnQgPSBvcHMtPmdldCgmcywgYXR0cmlidXRlLT5wYXJhbSk7CisJaWYg
KGNvdW50ID49IDApIHsKKwkJV0FSTl9PTl9PTkNFKGNvdW50ID4gMCk7CisJCWNvdW50ID0gc2Vx
X2J1Zl91c2VkKCZzKTsKKwkJLyogTWFrZSBzdXJlIHN0cmluZyBpcyB0ZXJtaW5hdGVkLiAqLwor
CQlzZXFfYnVmX3N0cigmcyk7CisJCS8qIElmIG92ZXJmbG93ZWQsIHJlZHVjZSBjb3VudCBieSAx
IGZvciB0cmFpbGluZyBOVUwgYnl0ZS4gKi8KKwkJaWYgKHNlcV9idWZfaGFzX292ZXJmbG93ZWQo
JnMpKQorCQkJY291bnQtLTsKIAl9CiAJa2VybmVsX3BhcmFtX3VubG9jayhtay0+bW9kKTsKIAly
ZXR1cm4gY291bnQ7Ci0tIAoyLjM0LjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBt
aS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=

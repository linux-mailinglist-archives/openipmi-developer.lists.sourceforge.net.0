Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sw7MEmXvK2oiIAQAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Jun 2026 13:37:09 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7905D678FFF
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Jun 2026 13:37:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=Ks4+qr3Q;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=UlTRUim9;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=OhkAf1Dw;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=TCeOg9jV;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p6WpRGqRCT2hrcWVlyV2RSW5Rrscj87bEJBR6kwlwa0=; b=Ks4+qr3QhMG8c16nnDzHwZ1OgT
	nkASU05iqkttyMlt+sxelGL/LBV3BJ7wzY9SoRRvAPX+82guJRLC8OI0xhPu+YHq8i80OVG4qT0Mn
	2+OsKfUqtTtnd/apr3uYAXUnGR46ym/zrD9VnfDi7LSdACbyo5BM52TK3JxLAMGEqbNw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wY0C3-0007iF-Sy;
	Fri, 12 Jun 2026 11:36:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jim.cromie@gmail.com>) id 1wXQ8G-0000YT-NQ
 for openipmi-developer@lists.sourceforge.net;
 Wed, 10 Jun 2026 21:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=96czj6yri6D29TEjjpnrX0Ms962E0G1MVyGNh2o55HQ=; b=UlTRUim9IyhPtIwOGvHSE0tFv8
 enhcwxdip4C1FY1F5ske5iRA/Bavr22A5ZtDGiPI7+RREPTGsutmO6nN3VBd6koGxaSU1gku7aHZt
 7OiT2ZeOwwk4cZENCskPOXmh38wiTC6mEL9NeDJiDII22UibGnigvB5zTiYLWF5Dr4oU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=96czj6yri6D29TEjjpnrX0Ms962E0G1MVyGNh2o55HQ=; b=OhkAf1DwtrIbyPNZDvZEfKxzSo
 qPj+xV8HEWSiRLpfWglY2q2GbTlM/W91dOon02aZt4zhlqe8kh8nbejvIKvVnTdaso2ItNWAEF6Wq
 91g5+fkmTgc8POdljj42r9FIo7NODcHf6/OzL3eP33Uy554VZaoBtjBzo46aO809HSQ0=;
Received: from mail-yw1-f179.google.com ([209.85.128.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wXQ8F-0003VJ-LW for openipmi-developer@lists.sourceforge.net;
 Wed, 10 Jun 2026 21:06:41 +0000
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-7ea16f090b4so91568487b3.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 10 Jun 2026 14:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781125589; cv=none;
 d=google.com; s=arc-20240605;
 b=e7RalJCDPtdaI48GlHH68lZ2wL8rc+BleFwDoN8ZRVEGEQtCUD99jn6AlifN0b0IoI
 Mgvw6S+fSlWOcH26XuAPS73DHpPvIXRwLIGic24i5qKflbu7g0b2B1sINKC1VQPl4SPM
 0vPp9RpsGecgQbEmDg6iunmBbPsDS9eicnVdEg8OZ8u7Dv32CYwrdj8276Uz5gBvr2uj
 X1K5MKtFgKMEqLd2EYRee3UL5n67TnC9ZxrsS1vsnN7r0UHwu8cbwho1HOLmLiFuXATx
 dT1I9B0KBRAFoBdM+dhxHnNXzMwqRsVsOjrxUBwIslmMkwxXTcsGI2wWQmtM8W8tkcAM
 G7VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=96czj6yri6D29TEjjpnrX0Ms962E0G1MVyGNh2o55HQ=;
 fh=scADu49wMaxKOmditZl7XU4f+xXhynXRUTQnkZXS89o=;
 b=gz9Lkbob2Zy3CFuykRIrGYGOYEOygsE445BU6Bntzvg9dU3FM7R7gfy3ESqBcevD4G
 ZjECUZwrNfM2LT1zWTWruL38R/HFBR1xJqGlI8rfahJLXLdhuQrvsGqcI4tuj6Jxw494
 VTDxzmIdtX/Sk/qAcmvWE1KPzl5KSChqWBmqDTD1PmDsXr+1uIcqXMIN7HXyfMrxb3S7
 e+p7S5pt+KDw6yAF2E4cuAK8SR9w5FqYi8/l4M0Fk5qIqh7Qx6toeBVuys70gSbMjyOr
 si72vO7NVgRsWw1+Lc1c3OyE3VcMPTDeftssNloCh3N0u/uiizoC2nzNNaXvFbD2hACc
 SfTw==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781125589; x=1781730389; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=96czj6yri6D29TEjjpnrX0Ms962E0G1MVyGNh2o55HQ=;
 b=TCeOg9jVNXRAuT2D4KXBqc+cPGbF13rhrjTgNZX2g9GXnD0ukYlrSCTb4fLyC2hRWy
 wep3GcRYT7pwxPK9hph1efVPxvyY2UW0U/O9/Onv9bohwvMW+ls4p1C19z2F4paZ/7VW
 7+hL7rMouTzeEoeEQhrN9cWK88FiBXP34KqPTSHGngJuJKo2rkPeSks1zFvCFElKeatf
 j52n2krgY5B9x4KbHMNlEpDI5sl+saT7v4qd7k5bol1aJpRJ3gyxkT9zgK1Q/K5De+P4
 MySBDon1Guzf62adgeRLpSN7md+nJLAD4BS3rAhU7KZuEwXQLUAImD+x1A+e96XHj+zl
 7gIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781125589; x=1781730389;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=96czj6yri6D29TEjjpnrX0Ms962E0G1MVyGNh2o55HQ=;
 b=RorkEEI7h/0sTLzagOruy1mqXsvv7TU6zw3tFFk+zvzZZ2x/ziQXsLhLPLORsnW6f1
 epV2h86VoEOzaVeAHROGqTTEzSxxDatOCjiEIZJ9np3itKquprMDEqys087lRfNkMng1
 zT3Vji2L8qcyE7Gw7kWPBaebtMukGa7/NBasVE1YjQ6lGQWWwiz8tLdxyXO2iU8aT0yX
 1T42C2a9Cv5SusoltCT6jlMjYVvYwvGo3arfTtW0TJwEdhjSdHzht00C/KU7ubLSFnG6
 YQuMzAvXMyctovg6jA42L2n/BgPz6UFSceIMuDmmLQAhPaRJN0D74CTmNnIaRHuFnNv5
 ICYg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/bRTVjjAA61TMHdgfkiHRCzRByRiEwgd5dFOdOz/C3lAXgH4nUyBcpSj96kY0Llb8T/B4m/DxB35QFjR2NmbecBXk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Ywwnb9csrkK44Chh3xETTZaN9OXE3djf87Of4w7nL9zE3wnyv8c
 MAt4dn1YMyxNRBSm01h1USLZHaCtB5L4KGLyPylYQQv+xpykR363Srfn1wjnjeddUBZiKsJLjNX
 OdL/pL+bOjnBkYog7s1s2CqCyq/IotWk=
X-Gm-Gg: Acq92OGrF2kHIXqm8UTuOqwM0G0JdAyKpZ7dQBd3jRsXGIGI8XxRwrR3Sze7A+1tDP3
 M0ilj74fmraGWIDULRabSUmZ1LHC80WnpB/rV6y6iFPlBSLmdJAOs/sZaW/kUPoXE32HJPYXlD8
 utfPsmUSfS2bJ3OdT53HCTimyhfEos3gYUP8hEdlWZDn2fl+t0ZzMVLYGaMUV7b2gJmnT3GNRU6
 J0JG+A0FNjU4AZaR5WluD4lmi+DG2evSwSP2kBML93qKGJ52Zn53jIRy1PgfPGSAOHdjnTDuvo2
 JkQwWIFvaECBNJc4FRtHctTNoQ==
X-Received: by 2002:a05:690c:45c5:b0:7e9:ab56:3c99 with SMTP id
 00721157ae682-7ed0adbb616mr276188567b3.6.1781125589039; Wed, 10 Jun 2026
 14:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260521133315.work.845-kees@kernel.org>
 <20260521133326.2465264-4-kees@kernel.org>
 <da358ae1-91b4-4a16-ac76-ffab99c230b9@suse.com>
In-Reply-To: <da358ae1-91b4-4a16-ac76-ffab99c230b9@suse.com>
From: jim.cromie@gmail.com
Date: Wed, 10 Jun 2026 15:06:02 -0600
X-Gm-Features: AVVi8CcLXClq9Fijm8VjZF47hQWmos5q_iXrehNZDw9kSOby-E_cMxEQI0SK-hU
Message-ID: <CAJfuBxwRuT1K=rjPX+sdNyYurEJ=OjqbJaSa_S6JnY6yzTwTvQ@mail.gmail.com>
To: Petr Pavlu <petr.pavlu@suse.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, May 25,
 2026 at 7:35 AM Petr Pavlu wrote: > > On 5/21/26
 3:33 PM, Kees Cook wrote: > > Using Coccinelle,
 rewrite every struct kernel_param_ops
 initializer that > > sets .get into a DEFINE_KE [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [jim.cromie(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.179 listed in wl.mailspike.net]
X-Headers-End: 1wXQ8F-0003VJ-LW
X-Mailman-Approved-At: Fri, 12 Jun 2026 11:36:46 +0000
Subject: Re: [Openipmi-developer] [PATCH 04/11] treewide: Convert struct
 kernel_param_ops initializers to DEFINE_KERNEL_PARAM_OPS
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
 linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-media@vger.kernel.org, Lukasz Luba <lukasz.luba@arm.com>,
 "Maciej W. Rozycki" <macro@orcam.me.uk>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Simona Vetter <simona@ffwll.ch>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Paul Moore <paul@paul-moore.com>, Leon Romanovsky <leon@kernel.org>,
 Frank Li <Frank.Li@kernel.org>, Gabriel Somlo <somlo@cmu.edu>,
 Len Brown <lenb@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Jason Baron <jbaron@akamai.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Sean Christopherson <seanjc@google.com>,
 Thomas Gleixner <tglx@kernel.org>, Kees Cook <kees@kernel.org>,
 linux-pci@vger.kernel.org, Jason Wang <jasowang@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "David E. Box" <david.e.box@linux.intel.com>,
 Jiri Slaby <jirislaby@kernel.org>, linux-rdma@vger.kernel.org,
 Sami Tolvanen <samitolvanen@google.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Serge E. Hallyn" <serge@hallyn.com>, Marco Elver <elver@google.com>,
 intel-gfx@lists.freedesktop.org, Corey Minyard <corey@minyard.net>,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
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
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[38];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:petr.pavlu@suse.com,m:rafael@kernel.org,m:dri-devel@lists.freedesktop.org,m:pengpeng@iscas.ac.cn,m:srinivas.pandruvada@linux.intel.com,m:usb-storage@lists.one-eyed-alien.net,m:linux-arch@vger.kernel.org,m:bvanassche@acm.org,m:jgg@ziepe.ca,m:jmorris@namei.org,m:kasan-dev@googlegroups.com,m:tursulin@ursulin.net,m:linux-acpi@vger.kernel.org,m:stern@rowland.harvard.edu,m:linux-pm@vger.kernel.org,m:linux-um@lists.infradead.org,m:georgia.garcia@canonical.com,m:gregkh@linuxfoundation.org,m:linux-usb@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mcgrof@kernel.org,m:linux-fsdevel@vger.kernel.org,m:akpm@linux-foundation.org,m:linux-media@vger.kernel.org,m:lukasz.luba@arm.com,m:macro@orcam.me.uk,m:dave.hansen@linux.intel.com,m:James.Bottomley@hansenpartnership.com,m:simona@ffwll.ch,m:xuanzhuo@linux.alibaba.com,m:paul@paul-moore.com,m:leon@kernel.org,m:Frank.Li@kernel.org,m:somlo@cmu.edu,m:lenb@kernel.org,m:gor@linux.ibm.com,m:jani.nikula@linux.intel.com,m:jbaron@ak
 amai.com,m:bhelgaas@google.com,m:seanjc@google.com,m:tglx@kernel.org,m:kees@kernel.org,m:linux-pci@vger.kernel.org,m:jasowang@redhat.com,m:joonas.lahtinen@linux.intel.com,m:laurent.pinchart@ideasonboard.com,m:david.e.box@linux.intel.com,m:jirislaby@kernel.org,m:linux-rdma@vger.kernel.org,m:samitolvanen@google.com,m:ilpo.jarvinen@linux.intel.com,m:serge@hallyn.com,m:elver@google.com,m:intel-gfx@lists.freedesktop.org,m:corey@minyard.net,m:bp@alien8.de,m:rodrigo.vivi@intel.com,m:openipmi-developer@lists.sourceforge.net,m:mchehab@kernel.org,m:martin.petersen@oracle.com,m:atomlin@atomlin.com,m:hansg@kernel.org,m:kvm@vger.kernel.org,m:mst@redhat.com,m:peterz@infradead.org,m:hpa@zytor.com,m:qemu-devel@nongnu.org,m:linux-mm@kvack.org,m:glider@google.com,m:da.gomez@kernel.org,m:airlied@gmail.com,m:anton.ivanov@cambridgegreys.com,m:linux-scsi@vger.kernel.org,m:richard@nod.at,m:x86@kernel.org,m:linux-security-module@vger.kernel.org,m:eperezma@redhat.com,m:mingo@redhat.com,m:linux-serial@vger.k
 ernel.org,m:rui.zhang@intel.com,m:hca@linux.ibm.com,m:apparmor@lists.ubuntu.com,m:virtualization@lists.linux.dev,m:linux-hardening@vger.kernel.org,m:hare@suse.de,m:benjamin.berg@intel.com,m:daniel.lezcano@kernel.org,m:andriy.shevchenko@linux.intel.com,m:tiwei.btw@antgroup.com,m:dvyukov@google.com,m:john.johansen@canonical.com,m:netdev@vger.kernel.org,m:vkoul@kernel.org,m:dmaengine@vger.kernel.org,m:pbonzini@redhat.com,m:johannes@sipsolutions.net,m:linuxppc-dev@lists.ozlabs.org,m:linux-modules@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,iscas.ac.cn,linux.intel.com,lists.one-eyed-alien.net,vger.kernel.org,acm.org,ziepe.ca,namei.org,googlegroups.com,ursulin.net,rowland.harvard.edu,lists.infradead.org,canonical.com,linuxfoundation.org,linux-foundation.org,arm.com,orcam.me.uk,hansenpartnership.com,ffwll.ch,linux.alibaba.com,paul-moore.com,cmu.edu,linux.ibm.com,akamai.com,google.com,redhat.com,ideasonboard.com,hallyn.com,minyard.net,alien8.de,intel.com,lists.sourceforge.net,oracle.com,atomlin.com,infradead.org,zytor.com,nongnu.org,kvack.org,gmail.com,cambridgegreys.com,nod.at,lists.ubuntu.com,lists.linux.dev,suse.de,antgroup.com,sipsolutions.net,lists.ozlabs.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCPT_COUNT_GT_50(0.00)[98];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20251104];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,suse.com:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7905D678FFF

T24gTW9uLCBNYXkgMjUsIDIwMjYgYXQgNzozNeKAr0FNIFBldHIgUGF2bHUgPHBldHIucGF2bHVA
c3VzZS5jb20+IHdyb3RlOgo+Cj4gT24gNS8yMS8yNiAzOjMzIFBNLCBLZWVzIENvb2sgd3JvdGU6
Cj4gPiBVc2luZyBDb2NjaW5lbGxlLCByZXdyaXRlIGV2ZXJ5IHN0cnVjdCBrZXJuZWxfcGFyYW1f
b3BzIGluaXRpYWxpemVyIHRoYXQKPiA+IHNldHMgLmdldCBpbnRvIGEgREVGSU5FX0tFUk5FTF9Q
QVJBTV9PUFMtZmFtaWx5IG1hY3JvIGludm9jYXRpb24sCj4gPiBmb3IgZXhhbXBsZToKPiA+Cj4g
PiBAQAo+ID4gZGVjbGFyZXIgbmFtZSBERUZJTkVfS0VSTkVMX1BBUkFNX09QUzsKPiA+IGlkZW50
aWZpZXIgT1BTOwo+ID4gZXhwcmVzc2lvbiBTRVQsIEdFVDsKPiA+IEBACj4gPiAtIGNvbnN0IHN0
cnVjdCBrZXJuZWxfcGFyYW1fb3BzIE9QUyA9IHsKPiA+IC0gICAgICAgLnNldCA9IFNFVCwKPiA+
IC0gICAgICAgLmdldCA9IEdFVCwKPiA+IC0gfTsKPiA+ICsgREVGSU5FX0tFUk5FTF9QQVJBTV9P
UFMoT1BTLCBTRVQsIEdFVCk7Cj4gPgo+ID4gVXNpbmcgdGhlIG1hY3JvIGZvciBpbml0aWFsaXph
dGlvbiBtZWFucyBmdXR1cmUgY2hhbmdlcyBjYW4gbWFuaXB1bGF0ZQo+ID4gdGhlIHN0cnVjdCBs
YXlvdXQgYW5kIGNhbGxiYWNrIHByb3RvdHlwZXMgd2l0aG91dCBoYXZpbmcgdG8gY2hhbmdlIGV2
ZXJ5Cj4gPiBpbml0aWFsaXplci4KPgo+IE5pdDogRm9yIGNvbnNpc3RlbmN5LCBJIHN1Z2dlc3Qg
YWxzbyBjb252ZXJ0aW5nIHRoZSBmZXcgcmVtYWluaW5nCj4ga2VybmVsX3BhcmFtX29wcyBpbnN0
YW5jZXMgdGhhdCBzcGVjaWZ5IG9ubHkgLnNldCBhbmQgbm8gLmdldCwgc3VjaCBhcwo+IHNpbWRp
c2tfcGFyYW1fb3BzX2ZpbGVuYW1lLgo+Cj4gLS0KPiBUaGFua3MsCj4gUGV0cgoKZm9yIHRoZSBk
eW5hbWljLWRlYnVnIGNoYW5nZXMKClJldmlld2VkLWJ5OiBKaW0gQ3JvbWllIDxqaW0uY3JvbWll
QGdtYWlsLmNvbT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==

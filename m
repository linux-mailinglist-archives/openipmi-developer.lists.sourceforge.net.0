Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B28F4A07F87
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Jan 2025 19:06:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVwvD-00074r-04;
	Thu, 09 Jan 2025 18:06:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1tVwv5-00074e-Cz
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 18:06:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oj14ywmszEKTo8pcqpdQOE/Eg/vLBK+a32sIyoJJO2E=; b=ZZla92V8xHdvOxgYbJcZk7foN5
 GVMbLOk+Ma3HfVfjNLJsZUYanmpR4DtkKehWs7GS+3hp5ySEFiGZRLUzYdp6fBgRpQbDWAraNXcdu
 Q03B0aaYJ/nws4xVYOSNSjJWWUpS+TwiPM2pls1hfG5zUIA9JfYH+51pAC9nGFUiPaAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oj14ywmszEKTo8pcqpdQOE/Eg/vLBK+a32sIyoJJO2E=; b=BG+i+K1c1dnj2qmmbzrFJUrReN
 hTPGABdwVVJiKSjh5EPdkRcBQrfyBUSXAwz9Xu8CRBB1vmslriRmmEUcKS14AQrpH4QvxyIvjnVq0
 KdE6YjEG0IQizrZQbRHiZHHnuWI2Na7KtQR+WKu7JwWJ7xhCO/BLLZE9mWcpU0WxyMs0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVwv3-00059f-EO for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 18:06:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1CA015C5CC4
 for <openipmi-developer@lists.sourceforge.net>;
 Thu,  9 Jan 2025 18:05:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0AC1C4CEE5
 for <openipmi-developer@lists.sourceforge.net>;
 Thu,  9 Jan 2025 18:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736445963;
 bh=rp9xKD+8m1msQ0xxbCs9oZzFyU1GURrqUZhq3NbpvyQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hXJVC9TEna9TWYKbS9F02aIUvOHalq4E7m1+cvMk0ArDdbnyNkOQeESQ7Ur7QTEYq
 oV3fJnNHiU6ugTU9/tuOjHdJ9qaR831jsML8BcJ2B2+uzRQfA4kpmr3AmZ+XqRvw70
 BTN8HX8ggLtR2WOIhN2X2Ipa4OKa5qs1wwTNGfy1p+9su4jHqsiWIAwGFmgaxU7Nfw
 H9Abn1fQ/2SPP2QU6lVw0EYHITfjtwSWp9wIQJbaVZRVNv4TDYE1jWwRNuescPEqI8
 vYK392uOFALwuMqP1HoC1bERclFcBuYV7fmAeGJqkaXECHPwUoHQw9LVho0fFgK9tk
 fJ+fXn+JQWXLQ==
Received: by mail-il1-f182.google.com with SMTP id
 e9e14a558f8ab-3a9628d20f0so7330025ab.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 09 Jan 2025 10:06:03 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWsFrgjMSoqDDuRyCeshUS8cFo5bBUdp+Hq3KcfmG1xi381cGV9mXX8Hzc8DH6e40ZmFTck9Q+Oy3zMvEZfFSYy0IQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyCvZ8UfCAr0pWcOIhQLTEZpaVhL5jmEU3vtOdhxOoeXEponjyq
 q/L3t2ax/RHOfe4tG1rgTXpGTPy0IKmP9K4c+nSL0546UIu0rKe7OMBvdLMp/PywTWlk4klWfKe
 lWEb5jmme3zGZYQQOL9OhPKgUdwk=
X-Google-Smtp-Source: AGHT+IHw82IqZn0L3vIWI2GRAE2/Fu1vkOzFuTOkK3ccul7HxPp7E2ac95iMCNTUN8mztI4YyZ2Kf9FZUsicSlonzfg=
X-Received: by 2002:a05:6e02:3048:b0:3a7:6a98:3fdf with SMTP id
 e9e14a558f8ab-3ce3a9da817mr60484875ab.14.1736445963152; Thu, 09 Jan 2025
 10:06:03 -0800 (PST)
MIME-Version: 1.0
References: <20250109-jag-ctl_table_const-v1-1-622aea7230cf@kernel.org>
In-Reply-To: <20250109-jag-ctl_table_const-v1-1-622aea7230cf@kernel.org>
Date: Thu, 9 Jan 2025 10:05:51 -0800
X-Gmail-Original-Message-ID: <CAPhsuW5zpA28gkBQYMMuYCUbnDzdeq4pHsd0Mx=PBnDPiHKqHw@mail.gmail.com>
X-Gm-Features: AbW1kvZZD8oqcdTZ9DXv7tEUC7bpyqeBsuw6nnhXboAE2kNg_1eTiibnv93HXj8
Message-ID: <CAPhsuW5zpA28gkBQYMMuYCUbnDzdeq4pHsd0Mx=PBnDPiHKqHw@mail.gmail.com>
To: Joel Granados <joel.granados@kernel.org>
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jan 9, 2025 at 5:16 AM Joel Granados <joel.granados@kernel.org>
    wrote: > [...] > drivers/base/firmware_loader/fallback_table.c | 2 +- > drivers/cdrom/cdrom.c
    | 2 +- > drivers/char/hpet.c | 2 [...] 
 
 Content analysis details:   (-5.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [139.178.84.217 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [139.178.84.217 listed in sa-trusted.bondedsender.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tVwv3-00059f-EO
Subject: Re: [Openipmi-developer] [PATCH] treewide: const qualify ctl_tables
 where applicable
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
From: Song Liu via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Song Liu <song@kernel.org>
Cc: linux-aio@kvack.org, linux-hyperv@vger.kernel.org,
 Kees Cook <kees@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, keyrings@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-riscv@lists.infradead.org,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-security-module@vger.kernel.org, codalist@coda.cs.cmu.edu,
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-trace-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 apparmor@lists.ubuntu.com, linux-raid@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, linux-nfs@vger.kernel.org, kexec@lists.infradead.org,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBKYW4gOSwgMjAyNSBhdCA1OjE24oCvQU0gSm9lbCBHcmFuYWRvcyA8am9lbC5ncmFu
YWRvc0BrZXJuZWwub3JnPiB3cm90ZToKPgpbLi4uXQo+ICBkcml2ZXJzL2Jhc2UvZmlybXdhcmVf
bG9hZGVyL2ZhbGxiYWNrX3RhYmxlLmMgfCAyICstCj4gIGRyaXZlcnMvY2Ryb20vY2Ryb20uYyAg
ICAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9jaGFyL2hwZXQuYyAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQo+ICBkcml2ZXJzL2NoYXIvaXBtaS9pcG1pX3Bv
d2Vyb2ZmLmMgICAgICAgICAgICAgfCAyICstCj4gIGRyaXZlcnMvY2hhci9yYW5kb20uYyAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
ZXJmLmMgICAgICAgICAgICAgIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0veGUveGVfb2JzZXJ2
YXRpb24uYyAgICAgICAgICAgfCAyICstCj4gIGRyaXZlcnMvaHYvaHZfY29tbW9uLmMgICAgICAg
ICAgICAgICAgICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvaXdjbS5j
ICAgICAgICAgICAgICAgIHwgMiArLQo+ICBkcml2ZXJzL2luZmluaWJhbmQvY29yZS91Y21hLmMg
ICAgICAgICAgICAgICAgfCAyICstCj4gIGRyaXZlcnMvbWFjaW50b3NoL21hY19oaWQuYyAgICAg
ICAgICAgICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9tZC9tZC5jICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMiArLQoKRm9yIG1kIGJpdHM6CgpSZXZpZXdlZC1ieTogU29uZyBMaXUg
PHNvbmdAa2VybmVsLm9yZz4KClRoYW5rcywKU29uZwoKWy4uLl0KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==

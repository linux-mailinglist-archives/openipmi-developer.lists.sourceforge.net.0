Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LjzsCwVETmqUJwIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 08 Jul 2026 14:35:17 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 468F9726579
	for <lists+openipmi-developer@lfdr.de>; Wed, 08 Jul 2026 14:35:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=QxGF44xm;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=dsPEK2vj;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=OMQmd++L;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=Jubsw54k;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:References:MIME-Version:
	In-Reply-To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QR8j2/66l6hOQhEfC0VEvAjfMHu+gXUwb0sekX4x0G4=; b=QxGF44xm+gKOoERhsyBhNYqi2D
	X6IUYQKmDfgfvlBydV1RZ2UFUzgAe6m81PeBsHrewcdmMXi1IK/QbzOh8c/i5JcrQAkxGi0kQdgVr
	HaNx1z8cRtaoE/D8koJQkSyBAaZESoPtu7obqNieKepmLPp0/m9fiN4EXR9b8fbk628g=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whRUa-0001nC-Al;
	Wed, 08 Jul 2026 12:35:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brgl@kernel.org>) id 1whQZh-0006LZ-KL
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 11:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:
 References:MIME-Version:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VJqmVkipn9LS5P7QGj3CtnPtrgKv94L3h9lYbmlzwUw=; b=dsPEK2vjXuqD/siNwrJB7ntNUl
 Ro7azBxt8A/qwjjRFMIuJusbs1zmwcYV0TCTKCQ88ZIUzZUzTUwSdZyATaueswl5Zqy/uIjp+vtj3
 3iCj9jluMEvOOtBUTRNTxpyJCo4Q1sjXodL79co++ZDbArj1Crp4my7aVQgS7rgTCw3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:References:MIME-Version:
 In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VJqmVkipn9LS5P7QGj3CtnPtrgKv94L3h9lYbmlzwUw=; b=OMQmd++LlqtxYTQgijH7DDCOcE
 mu1upXMLwYCOw1/xSfYmO5+HC+fciAAgNIj1onYgYKPal+viNnOShikXknrSdTNZe+9V0CoN+oz5O
 hEKDEOzxoXvA9cDjH+Jwl40GQocc9fBl9SinpTXPSvEzWt3pW9iZ+C7ljydjdwslejTQ=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1whQZe-00027H-JM for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 11:36:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 329FA43E5D
 for <openipmi-developer@lists.sourceforge.net>;
 Wed,  8 Jul 2026 11:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A1231F00A3A
 for <openipmi-developer@lists.sourceforge.net>;
 Wed,  8 Jul 2026 11:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783510568;
 bh=VJqmVkipn9LS5P7QGj3CtnPtrgKv94L3h9lYbmlzwUw=;
 h=From:In-Reply-To:References:Date:Subject:To:Cc;
 b=Jubsw54kDR27sWbSj9dUqkbKXgNxC91fBonXo1MhKc1+a7dUaZ6iYUqdoK4nbeF/R
 d5UxICS9BwycYLDv53TebSDts6WzFNgkKas9Jo4BqfCp/3R1CZQRKOwla5ZXdstcu7
 2hOi/gtguSYnLSPhXrmslk8pl8N9ufYs7T4tNObqTZIJqWBsqg2nAMl7j0ORObShld
 nXg1tcb/f3REvwgaxBz3iXyJ/Ouh5tgnpXVm49YtqLzK/UvygXzn7lESTWDFUQOCPu
 Z76eT8EmUFSrnWuOhnCtdXmV0fYh/85uufKtlOcw7iMJDI2UvTRa7WhEqiv+mgDGOM
 K2BtfrB11uLug==
Received: by mail-lj1-f170.google.com with SMTP id
 38308e7fff4ca-39b349ae174so4569221fa.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 08 Jul 2026 04:36:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AHgh+Ro/iS7YGZTLEA+kvTSdEQNJk3N9Wg5Jd/8iXMzgrL22jQZPihXO3bmW1LEJnR+qE6ubSOoq4CPxt9ZJB35zHBSww/Y=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzrF93Kk1hjXReT15/3FXdrTFZu0qRopWElQYJ4ij+cZGgijx5D
 FMcrEJ+szpP3V7vQVy+vt7pYIeiicXn8zvWUvm19PSf0GitUlcxWbcqc07N2X2Pd7aKRoE0XGNH
 U6GSCld7108Ja7vJorOf+RdSY90YdnyczRkQ5diEmpw==
X-Received: by 2002:a05:651c:2220:b0:39a:fffc:ccac with SMTP id
 38308e7fff4ca-39c799ff7c0mr5084711fa.35.1783510566653; Wed, 08 Jul 2026
 04:36:06 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jul 2026 04:36:05 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jul 2026 04:36:05 -0700
In-Reply-To: <20260708-ls2kbmc-mod-v2-7-2afdd1741766@gmail.com>
MIME-Version: 1.0
References: <20260708-ls2kbmc-mod-v2-0-2afdd1741766@gmail.com>
 <20260708-ls2kbmc-mod-v2-7-2afdd1741766@gmail.com>
Date: Wed, 8 Jul 2026 04:36:05 -0700
X-Gmail-Original-Message-ID: <CAMRc=MeDq6=u66hc+ChmJA9iKRhsYFhg7rKkCGh2BA=--VGkcw@mail.gmail.com>
X-Gm-Features: AVVi8CephY5s0HC-Zzpi16U-IPSPutNk5n1kFwIKZoryZVIr-16Wmha0OSORi0M
Message-ID: <CAMRc=MeDq6=u66hc+ChmJA9iKRhsYFhg7rKkCGh2BA=--VGkcw@mail.gmail.com>
To: shankerwangmiao@gmail.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 7 Jul 2026 23:16:31 +0200, Miao Wang via B4 Relay
 <devnull+shankerwangmiao.gmail.com@kernel.org> said: > From: Miao Wang
 <shankerwangmiao@gmail.com>
 > > The reset event of BMC is captured thro [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1whQZe-00027H-JM
X-Mailman-Approved-At: Wed, 08 Jul 2026 12:35:01 +0000
Subject: Re: [Openipmi-developer] [PATCH RFC v2 7/7] mfd: ls2kbmc: Capture
 the reset event of BMC through GPIO
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
From: Bartosz Golaszewski via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Chong Qiao <qiaochong@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 Linus Walleij <linusw@kernel.org>, Lee Jones <lee@kernel.org>,
 mfd@lists.linux.dev, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Corey Minyard <corey@minyard.net>,
 linux-gpio@vger.kernel.org, Yinbo Zhu <zhuyinbo@loongson.cn>,
 WANG Xuerui <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Miao Wang via B4 Relay <devnull+shankerwangmiao.gmail.com@kernel.org>,
 Xi Ruoyao <xry111@xry111.site>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shankerwangmiao@gmail.com,m:qiaochong@loongson.cn,m:chenhuacai@kernel.org,m:brgl@kernel.org,m:zhoubinbin@loongson.cn,m:linusw@kernel.org,m:lee@kernel.org,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:jiaxun.yang@flygoat.com,m:corey@minyard.net,m:linux-gpio@vger.kernel.org,m:zhuyinbo@loongson.cn,m:kernel@xen0n.name,m:openipmi-developer@lists.sourceforge.net,m:devnull+shankerwangmiao.gmail.com@kernel.org,m:xry111@xry111.site,m:devnull@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[brgl@kernel.org];
	TAGGED_RCPT(0.00)[openipmi-developer,shankerwangmiao.gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 468F9726579

On Tue, 7 Jul 2026 23:16:31 +0200, Miao Wang via B4 Relay
<devnull+shankerwangmiao.gmail.com@kernel.org> said:
> From: Miao Wang <shankerwangmiao@gmail.com>
>
> The reset event of BMC is captured through GPIO. However, this driver
> bypasses the GPIO framework and directly accesses the GPIO controller
> through the fixed address. When the same GPIO controller is also
> exposed through ACPI and probed by the corresponding GPIO driver,
> there would be a conflict between the two drivers.
>
> This patch will try to find the GPIO through declared GPIO pin in the
> _CRS resources of the ACPI node. If no such delaration is found, the
> driver will fall back to search for the correct GPIO controller and pin
> according to the fixed address and pin number. A possible DSDT
> declaration for the GPIO pin might be as follows:
>
>     Device (BMC0) {
>         Name (_ADR, ...) // Match the PCI address of the BMC device
>         // \_SB.GPO1 is the ACPI path of the GPIO controller
>         Name (_CRS, ResourceTemplate () {
>             GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0,
>                      "\\_SB.GPO1", 0) {
>                 14 // 14 is the GPIO pin number
>             }
>     }
>
> Signed-off-by: Miao Wang <shankerwangmiao@gmail.com>
> ---
>  drivers/mfd/ls2k-bmc-core.c | 162 +++++++++++++++++++++++++++++++-------------
>  1 file changed, 115 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/mfd/ls2k-bmc-core.c b/drivers/mfd/ls2k-bmc-core.c
> index f87224105b3720cca97dcef089dad63fe57bc8c2..7187b2dfddc3acfb9fdf3cb3b4675299928dd03a 100644
> --- a/drivers/mfd/ls2k-bmc-core.c
> +++ b/drivers/mfd/ls2k-bmc-core.c
> @@ -26,6 +26,9 @@
>  #include <linux/stop_machine.h>
>  #include <linux/vt_kern.h>
>  #include <linux/console.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/gpio/driver.h>
> +#include <linux/gpio.h>

I've stopped here because this is a legacy header that must not be included
and none of the interfaces in it must be used, as per the - very loud - comment
at the top of that file.

Bart


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

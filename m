Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52264449838
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 16:31:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk6c1-0001Cy-EQ; Mon, 08 Nov 2021 15:31:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1mk6bz-0001Cs-Tr
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 15:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x4ykPITI22sSh/L6reU4seHVLFfVjdO/v+W3/SN8DUg=; b=lqYYue5hwWwRxeW7b3W0UOkgix
 ODUkCR/StiqovuVlEBgGf+/rLQKUpArbzR3hufDrFL9cd/R5aZ4W701ZzWHV7MT2OVz7GFw4M+AiU
 uhPCKuGbDLEJ+OJxawihJgny8Z43GNQHN6n+EAVAm/Cnd1adYwt+wj1rxVY0omSa0IhE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x4ykPITI22sSh/L6reU4seHVLFfVjdO/v+W3/SN8DUg=; b=IOw52EckPVcx4RkU3d0f7bIaI4
 9PU7YA1vUsSkun2Tr7jy0Zy/Wncw3+9h10MSmwBmAZPT3eJsRjRTRvtpWzts6THOG9uSio3IfFLQc
 WRVvcWarjsMdTio4Fj9D5k1grhyVvOUr0NSXfUGlcgXBkzus+d6KtV3VGU8mdQbhmzJI=;
Received: from mail-qt1-f181.google.com ([209.85.160.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mk6bz-0004UO-3w
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 15:31:07 +0000
Received: by mail-qt1-f181.google.com with SMTP id 8so13946140qty.10
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Nov 2021 07:31:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x4ykPITI22sSh/L6reU4seHVLFfVjdO/v+W3/SN8DUg=;
 b=fbQjk3tADt4oGTNoMuNeMqFWBwH95hwJwG5TMRZvG4lGkfOj1HKx9tsGyDiBIsm/hj
 Fbp4drM6dtlX9IVjlxFWtxZum4CRSW+URtGYdDiSNuJPVAdhgV6kLAms4YjSK89U1l14
 jfD9FuCoLmS3mO5b9hcRETwv9OBdPLuvduh/FH3NJvdSkON+hZHWVlL6d2Ak88vlQxs4
 DDopaWsDu8vAyyvXcnJG7e8rjmMLfen4pkr63iGRw4SYLj5XRmSLkkfqWOrwjrgxw2qM
 t0o6punsZb9iKWu4v6+yTJBV7UQkp8Xh4/dDPoENgiZvTU+ya27dH/W+hZiDUY/HRGZU
 Uu5g==
X-Gm-Message-State: AOAM530ySamwRMiF0Zo00m18o3r2x3pLf1iY3Ik3Tc5YWKqe3Zo8kVJs
 fo0eu3aOZ8/u03gYmWLuiUDsl/yk5dDFx0Fw
X-Google-Smtp-Source: ABdhPJxa+yJLsOh5FFzkdliqdwYTrabWZYYQ27qwqAeh7lxmZBTqVImASeaz2rw4m5/aCOhAFozycg==
X-Received: by 2002:ac8:7059:: with SMTP id y25mr318586qtm.404.1636385460390; 
 Mon, 08 Nov 2021 07:31:00 -0800 (PST)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com.
 [209.85.219.181])
 by smtp.gmail.com with ESMTPSA id t9sm11059809qtx.47.2021.11.08.07.31.00
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Nov 2021 07:31:00 -0800 (PST)
Received: by mail-yb1-f181.google.com with SMTP id o12so44647248ybk.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Nov 2021 07:31:00 -0800 (PST)
X-Received: by 2002:a9f:2c98:: with SMTP id w24mr725068uaj.89.1636385158322;
 Mon, 08 Nov 2021 07:25:58 -0800 (PST)
MIME-Version: 1.0
References: <20211108101157.15189-1-bp@alien8.de>
 <20211108101157.15189-43-bp@alien8.de>
 <CAMuHMdWH+txiSP_d7Jc4f_bU8Lf9iWpT4E3o5o7BJr-YdA6-VA@mail.gmail.com>
 <YYkyUEqcsOwQMb1S@zn.tnic>
In-Reply-To: <YYkyUEqcsOwQMb1S@zn.tnic>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Nov 2021 16:25:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXiBEQyEXJagSfpH44hxVA2t0sDH7B7YubLGHrb2MJLLA@mail.gmail.com>
Message-ID: <CAMuHMdXiBEQyEXJagSfpH44hxVA2t0sDH7B7YubLGHrb2MJLLA@mail.gmail.com>
To: Borislav Petkov <bp@alien8.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Borislav, On Mon, Nov 8, 2021 at 3:21 PM Borislav Petkov
 <bp@alien8.de> wrote: > On Mon, Nov 08, 2021 at 03:07:03PM +0100,
 Geert Uytterhoeven
 wrote: > > I think the addition of __must_check is overkill, leading [...]
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.181 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mk6bz-0004UO-3w
Subject: Re: [Openipmi-developer] [PATCH v0 42/42] notifier: Return an error
 when callback is already registered
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, linux-iio@vger.kernel.org,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, Ayush Sawal <ayush.sawal@chelsio.com>,
 sparclinux <sparclinux@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 linux-leds <linux-leds@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, scsi <linux-scsi@vger.kernel.org>,
 Rohit Maheshwari <rohitm@chelsio.com>, linux-staging@lists.linux.dev,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 openipmi-developer@lists.sourceforge.net, xen-devel@lists.xenproject.org,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 linux-um <linux-um@lists.infradead.org>, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, intel-gvt-dev@lists.freedesktop.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Parisc List <linux-parisc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Borislav,

On Mon, Nov 8, 2021 at 3:21 PM Borislav Petkov <bp@alien8.de> wrote:
> On Mon, Nov 08, 2021 at 03:07:03PM +0100, Geert Uytterhoeven wrote:
> > I think the addition of __must_check is overkill, leading to the
> > addition of useless error checks and message printing.
>
> See the WARN in notifier_chain_register() - it will already do "message
> printing".

I mean the addition of useless error checks and message printing _to
the callers_.

> > Many callers call this where it cannot fail, and where nothing can
> > be done in the very unlikely event that the call would ever start to
> > fail.
>
> This is an attempt to remove this WARN() hack in
> notifier_chain_register() and have the function return a proper error
> value instead of this "Currently always returns zero." which is bad
> design.
>
> Some of the registration functions around the tree check that retval and
> some don't. So if "it cannot fail" those registration either should not
> return a value or callers should check that return value - what we have
> now doesn't make a whole lot of sense.

With __must_check callers are required to check, even if they know
it cannot fail.

> Oh, and then fixing this should avoid stuff like:
>
> +       if (notifier_registered == false) {
> +               mce_register_decode_chain(&amdgpu_bad_page_nb);
> +               notifier_registered = true;
> +       }
>
> from propagating in the code.

That's unrelated to the addition of __must_check.

I'm not against returning proper errors codes.  I'm against forcing
callers to check things that cannot fail and to add individual error
printing to each and every caller.

Note that in other areas, we are moving in the other
direction, to a centralized printing of error messages,
cfr. e.g. commit 7723f4c5ecdb8d83 ("driver core: platform: Add an
error message to platform_get_irq*()").

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

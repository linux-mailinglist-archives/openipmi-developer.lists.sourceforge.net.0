Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7D1449945
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 17:12:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk7GA-0002U4-1L; Mon, 08 Nov 2021 16:12:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1mk7G8-0002Tt-1d
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 16:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hEQQmRj7LTpJogPgt2xRVOX7N+txus6iMmGepIZghfU=; b=hfWC9summf9EYLOCGCoOi93SpN
 uiJbbRZfxr9e/CJnXaYP88+afqaUA+/j/YLBJ/HtSf1DPqFCHX0k5GIwAy1hFRPG8I2dgaJihB5Gb
 YT1C0Are1knxlmVF497E/TJ6URpaDUnt+z7lKu9+oxTm6+ye7ga7NzuFnQPR2posS+VY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hEQQmRj7LTpJogPgt2xRVOX7N+txus6iMmGepIZghfU=; b=m4J973NXXupLh7hveCSlxJtRlk
 uOB4IcqgklfR5/oaWy1bQTRAkogfJa3zcc+11h/0k6KBoUy8DxgL2VCabNyas3ByED4IdrF8Zfo5F
 4ftJgqmbES9NSKzNmeo9GXBTjZ0ikGubhzwkrGvN3+mdju7R5+FpraEJZc9mQAEWE4CU=;
Received: from mail-ua1-f46.google.com ([209.85.222.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mk7G6-006FJJ-A0
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 16:12:35 +0000
Received: by mail-ua1-f46.google.com with SMTP id q13so32559625uaq.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Nov 2021 08:12:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hEQQmRj7LTpJogPgt2xRVOX7N+txus6iMmGepIZghfU=;
 b=vjqcQCoO9XU8oBJPC04VM+bFIZgpoJki99jZopVq/ta0cYib9Y+4PiBfGd/CGQhl35
 5ApxwbVP7FEVw/wsE2e6eDsz2MUSmJDrXnVyttHna/VWQd/ZpgchS51iXCqxHH9gab9P
 sEhN6cDNCymm48JXfzf2OnTB/js8foIU11CbIPYTYJRbvY/XMTIso1TJLP7BrRScKfFG
 pYYV4PEM7NiNNuDZEnSCf0hhYEK0x+/owfWtXZn/RhHrjhmFqZ170BnYjWKCvCS9lkzA
 pdmT/HN4yscEyYgbHzuNzJm+Nqic4m16gqTTsGd5V3ozbWPTT8kPz4yc5KTPABY6CNyo
 k7gA==
X-Gm-Message-State: AOAM531pwyHKX8BMRHKoW7lYD2VOyX//K/DXW1S1UitRZlKhCAIKnXcE
 k6QEDBFg6kpAI9RXwQO5N1A1ZYbyw0T8W52n
X-Google-Smtp-Source: ABdhPJyqUIz0zAGetN+xiMAO0nLkH130AC42KL1Zt1FvzyG7vWerp1fVzzd2mFlV0lQoR1FoObpBqQ==
X-Received: by 2002:ab0:45a8:: with SMTP id u37mr250244uau.24.1636387948424;
 Mon, 08 Nov 2021 08:12:28 -0800 (PST)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com.
 [209.85.221.175])
 by smtp.gmail.com with ESMTPSA id m15sm3341488vsh.31.2021.11.08.08.12.27
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Nov 2021 08:12:27 -0800 (PST)
Received: by mail-vk1-f175.google.com with SMTP id n201so8489163vkn.12
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Nov 2021 08:12:27 -0800 (PST)
X-Received: by 2002:a1f:f24f:: with SMTP id q76mr347755vkh.11.1636387947335;
 Mon, 08 Nov 2021 08:12:27 -0800 (PST)
MIME-Version: 1.0
References: <20211108101157.15189-1-bp@alien8.de>
 <20211108101157.15189-43-bp@alien8.de>
 <CAMuHMdWH+txiSP_d7Jc4f_bU8Lf9iWpT4E3o5o7BJr-YdA6-VA@mail.gmail.com>
 <YYkyUEqcsOwQMb1S@zn.tnic>
 <CAMuHMdXiBEQyEXJagSfpH44hxVA2t0sDH7B7YubLGHrb2MJLLA@mail.gmail.com>
 <YYlJQYLiIrhjwOmT@zn.tnic>
In-Reply-To: <YYlJQYLiIrhjwOmT@zn.tnic>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 8 Nov 2021 17:12:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXHikGrmUzuq0WG5JRHUUE=5zsaVCTF+e4TiHpM5tc5kA@mail.gmail.com>
Message-ID: <CAMuHMdXHikGrmUzuq0WG5JRHUUE=5zsaVCTF+e4TiHpM5tc5kA@mail.gmail.com>
To: Borislav Petkov <bp@alien8.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Borislav, On Mon, Nov 8, 2021 at 4:59 PM Borislav Petkov
 <bp@alien8.de> wrote: > On Mon, Nov 08, 2021 at 04:25:47PM +0100,
 Geert Uytterhoeven
 wrote: > > I'm not against returning proper errors codes. I'm agains [...]
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.46 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mk7G6-006FJJ-A0
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

On Mon, Nov 8, 2021 at 4:59 PM Borislav Petkov <bp@alien8.de> wrote:
> On Mon, Nov 08, 2021 at 04:25:47PM +0100, Geert Uytterhoeven wrote:
> > I'm not against returning proper errors codes.  I'm against forcing
> > callers to check things that cannot fail and to add individual error
> > printing to each and every caller.
>
> If you're against checking things at the callers, then the registration
> function should be void. IOW, those APIs are not optimally designed atm.

Returning void is the other extreme ;-)

There are 3 levels (ignoring BUG_ON()/panic () inside the callee):
  1. Return void: no one can check success or failure,
  2. Return an error code: up to the caller to decide,
  3. Return a __must_check error code: every caller must check.

I'm in favor of 2, as there are several places where it cannot fail.

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

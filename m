Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 074334A8C49
	for <lists+openipmi-developer@lfdr.de>; Thu,  3 Feb 2022 20:12:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFhWg-00035C-Kw; Thu, 03 Feb 2022 19:12:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <arnd@arndb.de>) id 1nFO97-0007C5-46
 for openipmi-developer@lists.sourceforge.net; Wed, 02 Feb 2022 22:30:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ut/rImQtz5yX/s/uyTEWap4NaiVmCx9GubkipQBaRcw=; b=H1hNqHijfpLnxBSdTHcG4DN882
 e3N+HWwE3jMXcy05K0QKcKo11MUAk3wNe65K7TFCMdDqlbJxg8VIuMzZvOC5IMTYaQFxK5cHs86Aq
 UvzZxXqG4U1ml9761XcsGN9myg8wc9AtP7coh0V5TT46ttX1TN1TqSUUnk4PGs2O4Xfs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ut/rImQtz5yX/s/uyTEWap4NaiVmCx9GubkipQBaRcw=; b=U6e5KYwS+8nfttwzZgDn9QzIGI
 Yy9HcguNHPa9g6YsXLf+AWRgGkgrgcZgEdoHCrccuInEfl2IyAsVGci2TUYWohQ7dy79K3Ww3mzH9
 e1ItG4Vbw4MPi46lNbp3/c67bAw9QzPDsp11D6YNRNSbQG9jaK5yhwQIH45u/tZ83Q1k=;
Received: from mout.kundenserver.de ([212.227.126.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFO93-00024E-Du
 for openipmi-developer@lists.sourceforge.net; Wed, 02 Feb 2022 22:30:35 +0000
Received: from mail-ej1-f49.google.com ([209.85.218.49]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MxE1Q-1mIDi92Xl2-00xYLE for <openipmi-developer@lists.sourceforge.net>; Wed,
 02 Feb 2022 23:17:17 +0100
Received: by mail-ej1-f49.google.com with SMTP id j2so1668039ejk.6
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 02 Feb 2022 14:17:17 -0800 (PST)
X-Gm-Message-State: AOAM531FqY9TpKOo3TORnoGDy1atwOo6GbkOMRoUWQO2WPfzyzMIu2Ol
 GsW4zitbZXSFHCr9Fe7U+q3DKDsmfpXhUDigE0s=
X-Google-Smtp-Source: ABdhPJyS0pXYjoI1KSj8v4HS5DRpiR5z8Z+MmivHV59Rfz0qHTXBAOHLhOORnhnqrVG7qMP59ls3cQTx3h8P+oStNX4=
X-Received: by 2002:a05:6000:3c6:: with SMTP id
 b6mr26662700wrg.12.1643836901999; 
 Wed, 02 Feb 2022 13:21:41 -0800 (PST)
MIME-Version: 1.0
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
 <20220202175635.GC2091156@minyard.net>
 <3E9905F2-1576-4826-ADC2-85796DE0F4DB@hpe.com>
In-Reply-To: <3E9905F2-1576-4826-ADC2-85796DE0F4DB@hpe.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 2 Feb 2022 22:21:25 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3itj=nshdRCoFQQh5fg-RsEaqj1PdBxfeN2-TzqmoPpQ@mail.gmail.com>
Message-ID: <CAK8P3a3itj=nshdRCoFQQh5fg-RsEaqj1PdBxfeN2-TzqmoPpQ@mail.gmail.com>
To: "Verdun, Jean-Marie" <verdun@hpe.com>
X-Provags-ID: V03:K1:ikzcxDqW/6KotfvRj/x0uja/fDQ1w0d3CQQTxBfqJCTMkwZEWjJ
 s+HfPx4ky5qsboMXpIoEfstIQfEjh3hZDre2GqLXyqBleTwfrwd4KkrBOmD6oe+aWjjxAPu
 IQpaXTDTTLqwp54Y0UZ0QADGJBrIW2fd3CrAMfQg2WV3JEXu74Eh2oBddnW9xgOZ2p/eXY3
 d2mE7NiM28pyalbb5+nvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vx5Crg2fcaU=:PMlZYQcaqw4jEKDzmNl5uX
 i4AgxkXaDTDgOmnQkF9yfXhIU18ELGuJiYklq4OH7biIUQd4g3Q3eWeQyVvxtNvUBEw3CNKoC
 Nfy+5Ovwo3H69BKdXZ3JIfeKnddGWWbmf25LoN/42MHFLCapySNOuuzrfKDJoM7mX80aWlifu
 3qPsEXc+XEeTuALVl5AENtd5MW+C65X3blCVvoR7bIlUCwFwo5kukjMt6Yt0JXDK66mSJBojp
 HlKXhJdDZ/RH+esjaOWnVK2M8VWfaX8v++54BMjz6mErOHeSteYHS2L4AcMlL/whc0sBCRE7e
 noteW18CdOc4MT3WL2VFWTX4Y9NPTmNosZeLbT8fRhwTl0ozJqvnUSNWW0OxQNDFb41ozn3xK
 2+RBx9Nt7VusXZxhyUg5tWqffV1iPbzW2N7d4dErEY5r6UJIx4KG/sG5LWyGjyTVKcmeykTlp
 JvsDGMI1EIbzzs+tRCS9woMdApYOXsS2pCJt2L3Qh3VQzc14pjw+MYvU1FfPY3lfx3cpE1xTB
 dZ6CcANpyfJi5VWV488d9Lr4bVaN+16b/Poyg6Z0wDE/UH5EyuClrmCus2n4GHdxMJpWcSZdn
 o3kxEAMuSMWBkS5HXSBLoUjWg+dEtXN5JGwLETvLNuLpdsotSkAUjEFQ60R1Xo9im764rtRP5
 QuelB4Vm+MOSOTYv59Ka71GQCGNRA5rJMxFU3QVlUUheFuMflm/d/GI3aI2E0+MZsed+MeLkA
 VWu47eLqsYxp019ncuDEazmB3y16rhLvvJDfLyIwgnp/VFvLuEGSubNBQD9jvqlk4XdDS92mM
 qIzljp1a8fA+ceBd2r8Utd8ckQSgFrhXCsQ3tgwezbHWIhymKk=
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Feb 2, 2022 at 7:14 PM Verdun,
 Jean-Marie <verdun@hpe.com>
 wrote: > > > This is far too big for a single patch. It needs to be broken
 into > > functional chunks that can be reviewed individual [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [212.227.126.131 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nFO93-00024E-Du
X-Mailman-Approved-At: Thu, 03 Feb 2022 19:12:13 +0000
Subject: Re: [Openipmi-developer] [PATCH] HPE BMC GXP SUPPORT
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Wang Kefeng <wangkefeng.wang@huawei.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Sam Ravnborg <sam@ravnborg.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stanislav Jakubek <stano.jakubek@gmail.com>, Hao Fang <fanghao11@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "minyard@acm.org" <minyard@acm.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "soc@kernel.org" <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Hawkins,
 Nick" <nick.hawkins@hpe.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "Russell King \(Oracle\)" <rmk+kernel@armlinux.org.uk>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Marc Zyngier <maz@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Feb 2, 2022 at 7:14 PM Verdun, Jean-Marie <verdun@hpe.com> wrote:
>
> > This is far too big for a single patch.  It needs to be broken into
> > functional chunks that can be reviewed individually.  Each driver and
> > each device tree change along with it's accompanying code need to be
> > done in individual patches.  The way it is it can't be reviewed in any
> > sane manner.
>
> > -corey
>
> Thanks for your feedback. We are getting a little bit lost here, as our plan was to submit initial
>
> - bindings
> - dts for SoC and 1 board
> - initial platform init code
>
> Then drivers code avoiding to send many dts updates which might complexify the
> review. We wanted to send all drivers code to relevant reviewers by tomorrow.
>
> So, what you are asking ( do not worry I am not trying to negotiate, I just want
> to avoid English misunderstandings as I am French) is to send per driver
>
> - binding
> - dts update
> - driver code
>
> For each driver through different submission (with each of them containing the
> 3 associated parts) ?
>
> What shall be the initial one in our case as we are introducing a platform ?
> An empty dts infrastructure and then we make it grow one step at a time ?

Ideally, what I prefer to see is a series of patches for all "essential" drivers
and the platform code that includes:

- one patch for each new binding
- one patch for each new driver
- one patch that hooks up arch/arm/mach-hpe/, MAINTAINERS
  and any other changes to arch/arm/ other than dts
- one patch that adds the initial .dts and .dtsi files, with all the
  devices added that have a valid binding, no need to split this
  up any further

This should include everything you need to boot into an initramfs
shell, typically cpu, serial, timer, clk, pinctrl,  gpio, irqchip. We will
merge these as a git branch in the soc tree.

In parallel, you can work with subsystem maintainers for the
"non-essential" drivers to review any other driver and binding,
e.g. drm/kms, network, i2c, pci, usb, etc. The patches for
the corresponding .dts additions also go through the soc tree,
but to make things simpler, you can send those in for a later
release.

          Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

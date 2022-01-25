Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A043E49B409
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Jan 2022 13:33:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nCL0V-0004CJ-SO; Tue, 25 Jan 2022 12:33:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1nCH9A-0006k4-Ju
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jan 2022 08:25:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0nj3tQtaS2Jftix8pFrL2+Rvw9SRm0Q+IWJ3wAkzl0s=; b=UMpbdNCxDLijFt5y34+HFo/ia7
 s6z8ByGwXVr1NAoMlyki/X3IgB4kKI5EmOfly04pPTzM/Y40aix0V5XpxU+CxayYk8euzLRt+Opw+
 gbUK6Xqusuy6WwsW5XTTVufG7ta4p+kVG0erxtCkzVGjTQRsYuL9q/M937dUhLLxoGTU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0nj3tQtaS2Jftix8pFrL2+Rvw9SRm0Q+IWJ3wAkzl0s=; b=DLxqMKygzym/LqAjj8NxCiIR3U
 lZHXqoBMXH8zOwq6376gwgCdDtSdkoyAMxombbIN9SIKIVuFg/YrBiGAyrmJKNqIfPWYtiHpvmS83
 C23YR1fTaMnCw2oDaiDmNAc4zOXJLeBccyFEJ1U3gJ9EjxPfnuMY/X2qoYTgZ5Aj+eO8=;
Received: from mail-ua1-f45.google.com ([209.85.222.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1nCH97-0004QW-2J
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jan 2022 08:25:47 +0000
Received: by mail-ua1-f45.google.com with SMTP id m90so36046671uam.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 25 Jan 2022 00:25:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0nj3tQtaS2Jftix8pFrL2+Rvw9SRm0Q+IWJ3wAkzl0s=;
 b=eOPJWmf0jcRmjLAda4EIpLaqpTVWxIBtfGPvGgUyCMkiHgqxs0RccM5KbevoudnVjZ
 No6LrO3rOS9zbToU3DtSBpjidKsa9zvOhiSXA8Jm09Thu9EXMjy0RJb+weiKOhgq+BQf
 lLZ5iYKZ7Daeelnec2mHMwEUt+D+/+rvb3x06IomTI9tdgLch7s/QF4nK2cwiAJQUJoz
 e0DiawWL6f8RaKDvviS4STgs/Gv3m1wDTvmrp0/hNVSSJ8mfBXpnaB0EV/QRNKJk+UY9
 2NI6OJc6YP8JoJ7zbtNbpKM7W72XHKIIb6M8m0Fjihy6FPyIEVah0cBIQrHKtsXdq0CN
 aNKQ==
X-Gm-Message-State: AOAM533ny5y6VnCb9aISyJN+l88/z6VlyO5fHeINMp86USJtRcKsF1H4
 B14bV+JSoMvmEll3Tr6BecawAHC/NikGo6KZ
X-Google-Smtp-Source: ABdhPJyT5KIybCDFdXX8Kouyp9PtT9UcR9LkCSembkoffgYCXHJYkfK+6PvmHT/GkEtJRxCKc2BJrQ==
X-Received: by 2002:a05:6102:c4f:: with SMTP id
 y15mr6953852vss.45.1643099138973; 
 Tue, 25 Jan 2022 00:25:38 -0800 (PST)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com.
 [209.85.222.46])
 by smtp.gmail.com with ESMTPSA id e66sm2094974vkh.35.2022.01.25.00.25.37
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Jan 2022 00:25:37 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id p7so28754352uao.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 25 Jan 2022 00:25:37 -0800 (PST)
X-Received: by 2002:a05:6102:a04:: with SMTP id
 t4mr1874173vsa.77.1643099137125; 
 Tue, 25 Jan 2022 00:25:37 -0800 (PST)
MIME-Version: 1.0
References: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeF05vBOzkN+xYCq@smile.fi.intel.com>
 <20220115154539.j3tsz5ioqexq2yuu@pengutronix.de>
 <YehdsUPiOTwgZywq@smile.fi.intel.com>
 <20220120075718.5qtrpc543kkykaow@pengutronix.de>
 <Ye6/NgfxsZnpXE09@smile.fi.intel.com>
 <15796e57-f7d4-9c66-3b53-0b026eaf31d8@omp.ru>
In-Reply-To: <15796e57-f7d4-9c66-3b53-0b026eaf31d8@omp.ru>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 25 Jan 2022 09:25:25 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXouECKa43OwUgQ6dA+gNeOqEZHZgOmQzqknzYiA924YA@mail.gmail.com>
Message-ID: <CAMuHMdXouECKa43OwUgQ6dA+gNeOqEZHZgOmQzqknzYiA924YA@mail.gmail.com>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Sergey, On Mon, Jan 24, 2022 at 10:02 PM Sergey Shtylyov
 <s.shtylyov@omp.ru> wrote: > On 1/24/22 6:01 PM, Andy Shevchenko wrote: >
 >>>>>>> It'd certainly be good to name anything that doesn't correspond to
 on [...] Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.45 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nCH97-0004QW-2J
X-Mailman-Approved-At: Tue, 25 Jan 2022 12:33:05 +0000
Subject: Re: [Openipmi-developer] [PATCH] driver core: platform: Rename
 platform_get_irq_optional() to platform_get_irq_silent()
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
Cc: Andrew Lunn <andrew@lunn.ch>, Ulf Hansson <ulf.hansson@linaro.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, KVM list <kvm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 linux-spi <linux-spi@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Takashi Iwai <tiwai@suse.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Sergey,

On Mon, Jan 24, 2022 at 10:02 PM Sergey Shtylyov <s.shtylyov@omp.ru> wrote:
> On 1/24/22 6:01 PM, Andy Shevchenko wrote:
> >>>>>>> It'd certainly be good to name anything that doesn't correspond to one
> >>>>>>> of the existing semantics for the API (!) something different rather
> >>>>>>> than adding yet another potentially overloaded meaning.
> >>>>>>
> >>>>>> It seems we're (at least) three who agree about this. Here is a patch
> >>>>>> fixing the name.
> >>>>>
> >>>>> And similar number of people are on the other side.
> >>>>
> >>>> If someone already opposed to the renaming (and not only the name) I
> >>>> must have missed that.
> >>>>
> >>>> So you think it's a good idea to keep the name
> >>>> platform_get_irq_optional() despite the "not found" value returned by it
> >>>> isn't usable as if it were a normal irq number?
> >>>
> >>> I meant that on the other side people who are in favour of Sergey's patch.
> >>> Since that I commented already that I opposed the renaming being a standalone
> >>> change.
> >>>
> >>> Do you agree that we have several issues with platform_get_irq*() APIs?
> [...]
> >>> 2. The vIRQ0 handling: a) WARN() followed by b) returned value 0
> >>
> >> I'm happy with the vIRQ0 handling. Today platform_get_irq() and it's
> >> silent variant returns either a valid and usuable irq number or a
> >> negative error value. That's totally fine.
> >
> > It might return 0.
> > Actually it seems that the WARN() can only be issued in two cases:
> > - SPARC with vIRQ0 in one of the array member
> > - fallback to ACPI for GPIO IRQ resource with index 0
>
>    You have probably missed the recent discovery that arch/sh/boards/board-aps4*.c
> causes IRQ0 to be passed as a direct IRQ resource?

So far no one reported seeing the big fat warning ;-)

> > The bottom line here is the SPARC case. Anybody familiar with the platform
> > can shed a light on this. If there is no such case, we may remove warning
> > along with ret = 0 case from platfrom_get_irq().
>
>    I'm afraid you're too fast here... :-)
>    We'll have a really hard time if we continue to allow IRQ0 to be returned by
> platform_get_irq() -- we'll have oto fileter it out in the callers then...

So far no one reported seeing the big fat warning?

> >>> 3. The specific cookie for "IRQ not found, while no error happened" case
> >>
> >> Not sure what you mean here. I have no problem that a situation I can
> >> cope with is called an error for the query function. I just do error
> >> handling and continue happily. So the part "while no error happened" is
> >> irrelevant to me.
> >
> > I meant that instead of using special error code, 0 is very much good for
> > the cases when IRQ is not found. It allows to distinguish -ENXIO from the
> > low layer from -ENXIO with this magic meaning.
>
>    I don't see how -ENXIO can trickle from the lower layers, frankly...

It might one day, leading to very hard to track bugs.

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

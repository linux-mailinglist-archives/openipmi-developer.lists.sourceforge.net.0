Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA4035BD2F
	for <lists+openipmi-developer@lfdr.de>; Mon, 12 Apr 2021 10:48:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lVsFc-0004A8-8z; Mon, 12 Apr 2021 08:48:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <arnd@kernel.org>) id 1lVsFZ-00049z-LI
 for openipmi-developer@lists.sourceforge.net; Mon, 12 Apr 2021 08:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W8irrMWImW++p/7zMcn/az8UJbyx/calbnKIc/iZqJI=; b=ZlL7SiqKZDP06ivcHv4yjcvSYz
 GbF939P1GuD+k+4uDmQ8fNvw+7h2jKcCyhfBrE0gOQpvcLyf/HVx4QxybLjV8eLL3AHt9Wj0favTs
 tIz0Urrz+yfSDW66saQjyVdZGROUmNEH1utExb7o9SCudPhuWvrjhGdzkkIW6J2V+i7g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W8irrMWImW++p/7zMcn/az8UJbyx/calbnKIc/iZqJI=; b=lZB0vZbjifPqeK/hLhHFDAp/gW
 5Fg0cjRMHgzLH7N/E7cSaGU1y9mt0wgrPmjaNuGMt7fleuFnuGLqdUEI6jdnF4N+3QrtDV38U4PaY
 TGushCyAQy6Qwe9zWsWY4lzmgeqmtvSVDnDTGHcxggAgfK84pttsVK6XASisUdCSrFDQ=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lVsFQ-0001Hx-CU
 for openipmi-developer@lists.sourceforge.net; Mon, 12 Apr 2021 08:48:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E40AC61365
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 12 Apr 2021 08:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618217313;
 bh=eLznHwvEfmec088sW414tCcwJZyAy1dqSqy3r+pI7zc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uey+W82dISxV0CSUCEiP+7gx9QuEZBJfcRoFlSMpkmrDlRAJJ0xVAOCsY94BkROLO
 zR/I466PgDid3faek70DuVNVg7noHojv66W6cwsIyY2yvu9Lt2qRuc9nGzCIxgZBXn
 b+pFwRet18DXS13aa8a0O4MFYM9FTwIPGTmzP+TKLFSBeZqwLd+xPrXiLpfNkZam//
 nTLqalOsrHTkSgYJ0euxXxHf96MAHZTKfV0Uyr+Q3gmjq/OvXQUq6zhW/U9m2u5Nji
 FvCPzYE1fW7fbdBhJcyx8lAQrFqUby6/4TW+Qu7SCI6vP9Tw1jB9lcRoTkvaxiDZxi
 iOtWMOODr0mgA==
Received: by mail-wr1-f46.google.com with SMTP id h4so2987251wrt.12
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 12 Apr 2021 01:48:32 -0700 (PDT)
X-Gm-Message-State: AOAM5317a/9JDWIUF0EitjW/GhVSmqA30B6cVGkOp7kQKiPaJMuUEbKy
 4FHw8+fDBY3Cjed3HenMmF/3f0hHGPtEoMv/ri8=
X-Google-Smtp-Source: ABdhPJwdOphNG/NExZknsy5yMxBCnGZA+q7EKNOchQAgxbs01jSI9QEePmT+lsicnZYJB8nH9FG1BOhyUFdSoL2u8ew=
X-Received: by 2002:adf:c70b:: with SMTP id k11mr30918454wrg.165.1618217311367; 
 Mon, 12 Apr 2021 01:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-16-andrew@aj.id.au>
 <CAK8P3a1HDQdbTAT4aRMLu-VFz720ynPqPHG5b22NZ5p5QfUqOw@mail.gmail.com>
 <ba63f830-4758-49aa-a63e-f204a8eec1b4@www.fastmail.com>
In-Reply-To: <ba63f830-4758-49aa-a63e-f204a8eec1b4@www.fastmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 12 Apr 2021 10:48:14 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3RXr5CR7DJgD9rEkN8owpPxXRgzRnPB_5LuQcHkzc4LA@mail.gmail.com>
Message-ID: <CAK8P3a3RXr5CR7DJgD9rEkN8owpPxXRgzRnPB_5LuQcHkzc4LA@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lVsFQ-0001Hx-CU
Subject: Re: [Openipmi-developer] [PATCH v2 16/21] ipmi: kcs_bmc: Add a
 "raw" character device interface
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 DTML <devicetree@vger.kernel.org>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Apr 12, 2021 at 3:33 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> On Fri, 9 Apr 2021, at 17:25, Arnd Bergmann wrote:
> > On Fri, Mar 19, 2021 at 7:31 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > The existing IPMI chardev encodes IPMI behaviours as the name suggests.
> > > However, KCS devices are useful beyond IPMI (or keyboards), as they
> > > provide a means to generate IRQs and exchange arbitrary data between a
> > > BMC and its host system.
> >
> > I only noticed the series after Joel asked about the DT changes on the arm
> > side. One question though:
> >
> > How does this related to the drivers/input/serio/ framework that also talks
> > to the keyboard controller for things that are not keyboards?
>
> I've taken a brief look and I feel they're somewhat closely related.
>
> It's plausible that we could wrangle the code so the Aspeed and Nuvoton
> KCS drivers move under drivers/input/serio. If you squint, the i8042
> serio device driver has similarities with what the Aspeed and Nuvoton
> device drivers are providing to the KCS IPMI stack.

After looking some more into it, I finally understood that the two are
rather complementary. While the  drivers/char/ipmi/kcs_bmc.c
is the other (bmc) end of drivers/char/ipmi/ipmi_kcs_sm.c, it seems
that the proposed kcs_bmc_cdev_raw.c interface would be
what corresponds to the other side of
drivers/input/serio/i8042.c+userio.c. Then again, these are also on
separate ports (0x60 for the keyboard controller, 0xca2 for the BMC
KCS), so they would never actually talk to one another.

> Both the KCS IPMI and raw chardev I've implemented in this patch need
> both read and write access to the status register (STR). serio could
> potentially expose its value through serio_interrupt() using the
> SERIO_OOB_DATA flag, but I haven't put any thought into it beyond this
> sentence. We'd need some extra support for writing STR via the serio
> API. I'm not sure that fits into the abstraction (unless we make
> serio_write() take a flags argument?).
>
> In that vein, the serio_raw interface is close to the functionality
> that the raw chardev provides in this patch, though again serio_raw
> lacks userspace access to STR. Flags are ignored in the ->interrupt()
> callback so all values received via ->interrupt() are exposed as data.
> The result is there's no way to take care of SERIO_OOB_DATA in the
> read() path. Given that, I think we'd have to expose an ioctl() to
> access the STR value after taking care of SERIO_OOB_DATA in
> ->interrupt().
>
> I'm not sure where that lands us.

Based on what I looked up, I think you can just forget about my original
question. We have two separate interfaces that use an Intel 8042-style
protocol, but they don't really interact.

      Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

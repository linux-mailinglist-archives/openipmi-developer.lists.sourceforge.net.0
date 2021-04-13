Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B8E35D9EB
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Apr 2021 10:22:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lWEJk-0008Ri-KP; Tue, 13 Apr 2021 08:22:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1lWEJi-0008Ra-PC
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Apr 2021 08:22:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3RpgkYwsEk24/oyS+RpxX+Eq0fId9ynv8/XeJ9Uev6Q=; b=C4LdP+HicPy76ptOgqoXJ11+qC
 VdNk58nnTc0Q+IieNgb+7E6drnRYUSi+hwE/IkpJhgiHjSDgWTEY1MZhjZcjB3VDvEwiIbCbLMbN6
 B4koL9T1RL2S2SCC8rhlWLqE1+mjaoU4DdbchDqHIezuKFQnSYqSJ36VssJhCUq3lBSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3RpgkYwsEk24/oyS+RpxX+Eq0fId9ynv8/XeJ9Uev6Q=; b=l/yCmrO74CL2Ocas8UCNa8phC1
 359a4leckq3XZRu53k9ZNOm0YN0us+mjoLHNjvFH93dscvcWlk5pptXb8HS1wwxxAkmUzQb6HXaEn
 MpECXyS1VJO0xh/J7xWUW/1PSAFxXu8jCq3C+uFAsW402NJQAPl5VmoMOgH9g1MJ5+GE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lWEJf-00EgNh-Qa
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Apr 2021 08:22:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B27B0613BD
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Apr 2021 08:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618302148;
 bh=FCK+SMdbdUGO5PuqGh46hY625MCpqFUerFbVNWNJmsU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rbngbYahMGe4TQffxAdJtnqoA+4uAXIIzQstIvnXyycZn6yoYgbMTptGxkY1QwoCN
 qaRj1wD0ufR2Z6BbaKA79azUIvCglPP1Q9d9Lkh7TDvzW9aq7byrS6HOAtEK604XId
 TxIecErW1PFjgVRTpT/6hn9OUwz9c6l3XRtTUWJXAwV80As1OviKsH0xrI7tBnuYVB
 3TnSL2TNKhzj/rw0+Ms+XlqmAcJSrUvQxex+CUOvd0VjfuLCV7Q6r0gA40TTX8fqce
 PeJ50GXDTxHT4XTSgLiu9HSuHNFAX2bKVELWG8//h8siSyxG99z0Zic5Y9fDM0gcMp
 59hXM3+4vWrCw==
Received: by mail-wm1-f45.google.com with SMTP id
 o20-20020a05600c4fd4b0290114265518afso8248252wmq.4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Apr 2021 01:22:28 -0700 (PDT)
X-Gm-Message-State: AOAM532f0a3m59+M7y06UEemEEm88B3Prd4nVlC7R0bIXXNUrfvUZfC6
 3G5/5Un12IEmvIcWxDH2bYo80kx+OOjYF22DeTs=
X-Google-Smtp-Source: ABdhPJx46kLBDXZba+CnxN/ZUNBoeLvXIwiYMUqu2i8IPMHM68OBFUpSsmGRmKG5BR+iCqeSFMqyDnLyPD7VzAFJe3M=
X-Received: by 2002:a7b:c14a:: with SMTP id z10mr2831003wmi.75.1618302147230; 
 Tue, 13 Apr 2021 01:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-16-andrew@aj.id.au>
 <CAK8P3a1HDQdbTAT4aRMLu-VFz720ynPqPHG5b22NZ5p5QfUqOw@mail.gmail.com>
 <ba63f830-4758-49aa-a63e-f204a8eec1b4@www.fastmail.com>
 <CAK8P3a3RXr5CR7DJgD9rEkN8owpPxXRgzRnPB_5LuQcHkzc4LA@mail.gmail.com>
 <e2d7268b-bdaf-45bf-bb21-a5b9f7e985a4@www.fastmail.com>
In-Reply-To: <e2d7268b-bdaf-45bf-bb21-a5b9f7e985a4@www.fastmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 13 Apr 2021 10:22:11 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1VFKuewt65RUK6hFAhZYSFFVUX7_nuJLoZW2WoPXGVTw@mail.gmail.com>
Message-ID: <CAK8P3a1VFKuewt65RUK6hFAhZYSFFVUX7_nuJLoZW2WoPXGVTw@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lWEJf-00EgNh-Qa
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

On Tue, Apr 13, 2021 at 1:45 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> On Mon, 12 Apr 2021, at 18:18, Arnd Bergmann wrote:
> > On Mon, Apr 12, 2021 at 3:33 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > > On Fri, 9 Apr 2021, at 17:25, Arnd Bergmann wrote:
> > > > On Fri, Mar 19, 2021 at 7:31 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > > > >
> > > > > The existing IPMI chardev encodes IPMI behaviours as the name suggests.
> > > > > However, KCS devices are useful beyond IPMI (or keyboards), as they
> > > > > provide a means to generate IRQs and exchange arbitrary data between a
> > > > > BMC and its host system.
> > > >
> > > > I only noticed the series after Joel asked about the DT changes on the arm
> > > > side. One question though:
> > > >
> > > > How does this related to the drivers/input/serio/ framework that also talks
> > > > to the keyboard controller for things that are not keyboards?
> > >
> > > I've taken a brief look and I feel they're somewhat closely related.
> > >
> > > It's plausible that we could wrangle the code so the Aspeed and Nuvoton
> > > KCS drivers move under drivers/input/serio. If you squint, the i8042
> > > serio device driver has similarities with what the Aspeed and Nuvoton
> > > device drivers are providing to the KCS IPMI stack.
> >
> > After looking some more into it, I finally understood that the two are
> > rather complementary. While the  drivers/char/ipmi/kcs_bmc.c
> > is the other (bmc) end of drivers/char/ipmi/ipmi_kcs_sm.c, it seems
> > that the proposed kcs_bmc_cdev_raw.c interface would be
> > what corresponds to the other side of
> > drivers/input/serio/i8042.c+userio.c.
>
> Right. I guess the question is should we be splitting kernel subsystems
> along host/bmc lines? Doesn't feel intuitive, it's all Linux, but maybe
> we can consolidate in the future if it makes sense?

We actually have a number of subsystems with somewhat overlapping
functionality. I brought up serio, because it has an abstraction for multiple
things that communicate over the keyboard controller and I thought
the problem you were trying to solve was also related to the keyboard
controller.
It is also one of multiple abstractions that allow you to connect a device
to a uart (along with serdev and tty_ldisc, probably at least one more that
you can nest above or below these).

Consolidating the kcs_bmc.c interface into something that already
exists would obviously be best, but it's not clear which of these that
should be, that depends on the fundamental properties of the hardware
interface.

> > Then again, these are also on
> > separate ports (0x60 for the keyboard controller, 0xca2 for the BMC
> > KCS), so they would never actually talk to one another.
>
> Well, sort of I guess. On Power systems we don't use the keyboard
> controller for IPMI or keyboards, so we're just kinda exploiting the
> hardware for our own purposes.

Can you describe in an abstract form what the hardware interface
can do here and what you want from it? I wonder if it could be
part of a higher-level interface such as drivers/mailbox/ instead.

         Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

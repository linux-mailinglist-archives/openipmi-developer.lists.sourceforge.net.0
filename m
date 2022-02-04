Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EE24A9ACD
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Feb 2022 15:17:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFzPC-000237-Qh; Fri, 04 Feb 2022 14:17:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1nFuKR-00085d-HM
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 08:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iqZrLHxxMKYXcwDk+JH/xBRKoG0uPSeGw2pYz3/v6kY=; b=IHaZbogH+58Gt5KJP80UI+F40b
 iG8NjaPqClbfaDpF53ZBZRsBl2ApMdAT0O5tulYbywHQ4GLP2/J4iMJH6pJ6/jGrZTEMXgLlAXcLN
 4PTZD8+iAAyhPqxBKvbnhZAbEYWvGqyRPVlcBSAdt2v+Obmt4eSpptFJ0+Rs7+RiJa0M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iqZrLHxxMKYXcwDk+JH/xBRKoG0uPSeGw2pYz3/v6kY=; b=VnlxauGixkbntQeg19Sl4Py3gs
 oLH7PAKunN1oaCcpihLhLDlA7w38RON6qG+LUd/vayj1w9hnitWW1rbFX3O7sfdSidf6mtX7H2mnL
 XA9gBuNnPN5CAAxS7NyN4/EkZCF8RgUthJXnXznIKefLflvkIJa8XLDDla8VkVNX7NUY=;
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFuKK-00GkZL-Uu
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 08:52:25 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5D5CE3F4B4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri,  4 Feb 2022 08:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643964733;
 bh=iqZrLHxxMKYXcwDk+JH/xBRKoG0uPSeGw2pYz3/v6kY=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=eBIHCkKi09tjJqdWDZBoh6iZZuDeagxiGhsi8PTmN4ZBY1JFJ1plEen9alndKBpaa
 rZa25r7WemVcr/Bx6NCtnLoPmcYSswxky+lK1Vprp5zULdncJTDlsj1jhr9unEL+37
 CgMZr3cuaInfjFgXPkhtTMkhf90SGkA4DcHjETpJOlai5o6oC6dhVu5GCEn7VKpEjI
 em2yORSiXEHkXjyJWrN9LxinOyu8AyEXoRk1zfMSqqqEq9EL0xS4kzuezxyQSLbgmG
 RXKUWjiTX6UVV2h+jy9Q48+0w78TVhk0SnYeH1JBQPaASjUrgyx5Z+aTKPi3YAcZ2c
 67T+4OKW7Zwzw==
Received: by mail-ed1-f70.google.com with SMTP id
 n7-20020a05640205c700b0040b7be76147so2936978edx.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 04 Feb 2022 00:52:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=iqZrLHxxMKYXcwDk+JH/xBRKoG0uPSeGw2pYz3/v6kY=;
 b=uOQH2yAdE4SlqqaJsA1iX92hEHXCD4U2V+N6iawzReTdnZRv3h32mK+c/8c5KOHVLf
 7OiDqUxXANRNJnVxbxPr4ssEvc1fC8oyKjMp5QkXKF5azfyyCkldu8tlsjyLcPPhY+xB
 Mk1OnslNz/prkv8BBwOs8HVwqdSZ2++HsMNqiQ2XffB2TEsyXYIsfcMwT2C1JUCDPf0J
 d4E7z4bz04pmaDHZjE2+qrwgiEr2Vx+G2xcauRw9mDyqtWWwQGnvIskq19DXvnRYm7xY
 DbLGq2Vmlz4uN+tmSH3Vre8IsgqKh2/OexAbSRTKtMraSHx0MiUR1V+sFXADOptBUAZc
 4LfA==
X-Gm-Message-State: AOAM531GfLHRDTyBxzht/Qfz90C8kh00luey8Va32DwFm0bks5FpshGs
 gGvP1Yk/ybaYYZY42/sq3L8OXgDKZOe7ppR5KqUf9dc2WX0TWoJetIkgSexa9z+TTtXabFrpftI
 LXlPdh3iQeeOjsPgeHqvTrQF5SnvAaWr8TKw6tcck5Oz0g3RQstENhb4fHw==
X-Received: by 2002:a05:6402:3492:: with SMTP id
 v18mr1976639edc.345.1643964732811; 
 Fri, 04 Feb 2022 00:52:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwVcZDvspQCzKUyW5YG8zjDVQmYqY/DEAG3sfjKSfnQIzLHqmc3NlVf9LlkkFskfuUgLPJavA==
X-Received: by 2002:a05:6402:3492:: with SMTP id
 v18mr1976597edc.345.1643964732578; 
 Fri, 04 Feb 2022 00:52:12 -0800 (PST)
Received: from [192.168.0.81] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id z8sm418238ejc.197.2022.02.04.00.52.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Feb 2022 00:52:11 -0800 (PST)
Message-ID: <ed615fdb-5c30-697e-f197-a3a93c5336b9@canonical.com>
Date: Fri, 4 Feb 2022 09:52:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: "Verdun, Jean-Marie" <verdun@hpe.com>, Rob Herring <robh+dt@kernel.org>,
 "Hawkins, Nick" <nick.hawkins@hpe.com>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
 <CAL_Jsq+K2t5WYE056so1iZgZr7CBKvDEjAwnJVTyUFQcK-VFSA@mail.gmail.com>
 <e79133f2-f872-3ed6-4038-526e94e84909@canonical.com>
 <1FEAAC19-1DD7-40D7-98FD-30C2659E7C0F@hpe.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1FEAAC19-1DD7-40D7-98FD-30C2659E7C0F@hpe.com>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 03/02/2022 18:07, Verdun, Jean-Marie wrote: > > > Maybe
 it does not look like, but this is actually a v2. Nick was asked > > to change
 the naming for the nodes already in v1. Unfortunately it did > [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.122 listed in list.dnswl.org]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nFuKK-00GkZL-Uu
X-Mailman-Approved-At: Fri, 04 Feb 2022 14:17:39 +0000
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, netdev <netdev@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stanislav Jakubek <stano.jakubek@gmail.com>, Hao Fang <fanghao11@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Corey Minyard <minyard@acm.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Mark Brown <broonie@kernel.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "Russell King \(Oracle\)" <rmk+kernel@armlinux.org.uk>,
 linux-spi <linux-spi@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Marc Zyngier <maz@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 03/02/2022 18:07, Verdun, Jean-Marie wrote:
> 
>    > Maybe it does not look like, but this is actually a v2. Nick was asked
>    > to change the naming for the nodes already in v1. Unfortunately it did
>    > not happen, so we have vuart, spifi, vic and more.
> 
>    > It is a waste of reviewers' time to ask them to perform the same review
>    > twice or to ignore their comments.
> 
>     Hi Krysztof,
> 
>     Accept our apologies if you think you lose your time, it is clearly not our
>     intent. 
> 
>     This is the first time that we (I mean the team) introduce a new arch into
>     the linux kernel and I must admit that we had hard time to understand
>     from which angle we needed to start.
> 
>     I will probably write a Documentation afterward, as it is easy to find doc
>     on how to introduce a patch or a driver, but not when you want to 
>     introduce a new chip. 
> 
>     We are trying to do our best, and clearly want to follow all of your inputs.
>     Mistakes happen and they are clearly not intentional and not driven in 
>     a way to make you lose your time.
> 
>     Helping others, and teaching something new is definitely a way to 
>     optimize your time and this is what you are currently doing with us.
> 
>     We appreciate it and hope you will too.

I understand, I also maybe over-reacted on this. Just please go through
the comments you got for first submission and either apply them or
respond why you disagree.

The next submissions (patchset split into several commits) should be a
v3, preferably with cover letter (git format-patch --cover-letter -v3
...) where you can document also changes you did to the patchset.

It looks for example like this:
https://lore.kernel.org/linux-samsung-soc/31da451b-a36c-74fb-5667-d4193284c6cd@canonical.com/T/#mf98d2ac27a8481dc69dd110f9861c8318cade252

or like this (where changelogs are in each patch, although ordering is
not correct because dt-bindings should be the first in the series):
https://lore.kernel.org/all/20220103233948.198119-1-Mr.Bossman075@gmail.com/


Best regards,
Krzysztof


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

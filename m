Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4052D8FBD05
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Jun 2024 22:05:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sEaPj-0001j5-HU;
	Tue, 04 Jun 2024 20:05:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1sEa83-0001Ir-QH
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 19:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3Iay1wNfKZ5p2yKYQUB8UE9csohQVR6x64V5CAu9ZDo=; b=aILULm9ZGQOT5EGsmMs/00JP71
 7/lDexbD5KQ2IOscAQc+/uT0XaMmccDihs8/djEtePcfx7Ty526ojItxT5TQ0WTrQ660WrghU1+FN
 rNZ8MisGbqHV+rL4cX+NAkd8B8s06WHxRuat1S/krSq//TDulqUxRrk9hAn1/wTu1lmw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3Iay1wNfKZ5p2yKYQUB8UE9csohQVR6x64V5CAu9ZDo=; b=eQqSu70EFpWWvHZxCpmfew7WA9
 E4MiK5UKanYyKgxAOJg0iqj93+gTgbQ8hydekHF8TeMKIpYaUKRsZelWb8Jjlp22wp/BzjySavZbh
 W0L0j/fe3SDRRHVWEbj7oDv/N1O7TTaTzr6oaIbBkDPMn8UAVvWVu83GRI44jPdcXRdM=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sEa84-0001Vf-5l for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 19:47:32 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-4213870aafdso28727495e9.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 04 Jun 2024 12:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1717530440; x=1718135240;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=3Iay1wNfKZ5p2yKYQUB8UE9csohQVR6x64V5CAu9ZDo=;
 b=gK8B1F0Xe3Nx+kE5kDAmPc5ZWmR/UDm3NDGQ1Fux4yiKjCzrJ3vXM8YVDsRs0y0e13
 Z/hj7HJfqkdDE9URDour4g/gIn+FTFjPm0psUhfeAdw6F+0PgRYxcwvpW/725o5UOuaz
 8QJ/Fk8+mSVt31Ba/EPTNZWgDst4G/qmD/eAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717530440; x=1718135240;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3Iay1wNfKZ5p2yKYQUB8UE9csohQVR6x64V5CAu9ZDo=;
 b=gZ+28OGOfe7ud4cdzFWrfTbXZUQw2tWICeZopG/H8A6aYFvmt+7QSOdiR6p+38Q/Vn
 gtahb9AaJLX9fwrUbg6n7ePDpS1u3XMYgfbI2g3+87OkIlwpmSvtSY3HIdM3+zxc3Syr
 A2hL2h6WDEbmv9zcAyNo0HjtMBWMiFm9Eeve2A6HsUCnLzZcXRHaRIMpCCFD1O0YNbpM
 QalcLaaV/iX3jo4gNjDcx8GVn2NA2JxGCyEhOIpwxZoPD40WfjdF/qtGpRtTrHYY5CR5
 AsDNi89Yj96yoJvLBL9zJOFzIqZ4rUeHjYAmlOReAGCv8mZ9MT208pelHr44I8LHktwl
 fN6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXLBn7h3aN+4jFc/r7o4mzQjCQE2dnDh1uaUXKlNM/oGe0BUoobiWvAt0xl38lsIweEeORXIDyFWSL1lxkrfak/QGPfUAb7hEX4rQnu2U5E4MrNrU+aEkcr
X-Gm-Message-State: AOJu0Yykcs5vKZ6uHTGeYUp65FFRd+ri7kN3SdMJ81GZF9WUImdncRvV
 hcp8Q0ctLrwmUtc6s51EDaoEjwLbIkMhjv7SLGC8p2/8K/Ih/zTKmzq7mrqesieOOwLVxdiYM4l
 lkzbVrM02
X-Google-Smtp-Source: AGHT+IEVTAsejDK3b69A/T6+6+Seqx1za2yDxfTY4XHEsS75BuKcCjVVS65CARSHQR8bttEk1zuGyg==
X-Received: by 2002:a05:6512:3b83:b0:52b:8793:3c12 with SMTP id
 2adb3069b0e04-52bab4b5c1fmr279605e87.6.1717526913300; 
 Tue, 04 Jun 2024 11:48:33 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a68e0af2460sm456190566b.59.2024.06.04.11.48.32
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Jun 2024 11:48:33 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-356c4e926a3so4872751f8f.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 04 Jun 2024 11:48:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXHvlCpC1VVAFXK1IDyyKAgF1Waiho7JGkbE44VoK69piLlJ98CXoFFInH4Kw2xHLjBBN/2rs/ZVFRhkdCkULAio3vKOzBu4voGDDqlw8dwSsTf7tyigwkF
X-Received: by 2002:a17:906:54b:b0:a62:2cae:c02 with SMTP id
 a640c23a62f3a-a69a024ce40mr20818866b.61.1717526574326; Tue, 04 Jun 2024
 11:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
 <Zl9b_Wh_Lx7Aln1q@intel.com>
In-Reply-To: <Zl9b_Wh_Lx7Aln1q@intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 4 Jun 2024 11:42:36 -0700
X-Gmail-Original-Message-ID: <CAHk-=whAnzrovfD8MtpRwfbkVxi-W61CqKxYdX+94r_uJeCT7w@mail.gmail.com>
Message-ID: <CAHk-=whAnzrovfD8MtpRwfbkVxi-W61CqKxYdX+94r_uJeCT7w@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
X-Spam-Score: -4.9 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 4 Jun 2024 at 11:25,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
 wrote: > > (I believe that the new _match_string(str1, size, str2) deserves
 a better name, > but since I'm bad with naming stuff, I d [...] 
 Content analysis details:   (-4.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.52 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.52 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.128.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sEa84-0001Vf-5l
X-Mailman-Approved-At: Tue, 04 Jun 2024 20:05:46 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] treewide: Align
 match_string() with sysfs_match_string()
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Takashi Iwai <tiwai@suse.de>, Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Jaroslav Kysela <perex@perex.cz>, Ben Segall <bsegall@google.com>,
 Perry Yuan <perry.yuan@amd.com>, Prashant Gaikwad <pgaikwad@nvidia.com>,
 Pavel Machek <pavel@ucw.cz>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 linux-clk@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Abel Wu <wuyun.abel@bytedance.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Karol Herbst <kherbst@redhat.com>, Samuel Holland <samuel@sholland.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Tvrtko Ursulin <tursulin@ursulin.net>, linux-acpi@vger.kernel.org,
 Danilo Krummrich <dakr@redhat.com>, Mel Gorman <mgorman@suse.de>,
 linux-sunxi@lists.linux.dev, Guenter Roeck <linux@roeck-us.net>,
 Jean Delvare <jdelvare@suse.com>, linux-pm@vger.kernel.org,
 Potnuri Bharat Teja <bharat@chelsio.com>, James Morris <jmorris@namei.org>,
 linux-sound@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Zhihao Cheng <chengzhihao1@huawei.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Niklas Cassel <cassel@kernel.org>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 "Gautham R. Shenoy" <gautham.shenoy@amd.com>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Elad Nachman <enachman@marvell.com>,
 Lukasz Luba <lukasz.luba@arm.com>, linux-fbdev@vger.kernel.org,
 linux-usb@vger.kernel.org, Zefan Li <lizefan.x@bytedance.com>,
 nouveau@lists.freedesktop.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, Mimi Zohar <zohar@linux.ibm.com>,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>, Hu Ziji <huziji@marvell.com>,
 Eric Dumazet <edumazet@google.com>, keyrings@vger.kernel.org,
 Oliver O'Halloran <oohall@gmail.com>, linux-i2c@vger.kernel.org,
 Gregory Greenman <gregory.greenman@intel.com>, Ingo Molnar <mingo@kernel.org>,
 linux-security-module@vger.kernel.org,
 Valentin Schneider <vschneid@redhat.com>, Corey Minyard <minyard@acm.org>,
 Gregory Clement <gregory.clement@bootlin.com>, Lee Jones <lee@kernel.org>,
 Hugh Dickins <hughd@google.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, linux-trace-kernel@vger.kernel.org,
 Andi Shyti <andi.shyti@kernel.org>, Robert Richter <rrichter@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Brian Foster <bfoster@redhat.com>, Maxime Ripard <mripard@kernel.org>,
 linux-gpio@vger.kernel.org, Jason Baron <jbaron@akamai.com>,
 linux-rpi-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 cgroups@vger.kernel.org, Allen Pais <apais@linux.microsoft.com>,
 linux-arm-kernel@lists.infradead.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Roberto Sassu <roberto.sassu@huawei.com>, linux-integrity@vger.kernel.org,
 Daniel Bristot de Oliveira <bristot@redhat.com>, Len Brown <lenb@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Miri Korenblit <miriam.rachel.korenblit@intel.com>,
 Arseniy Krasnov <AVKrasnov@sberdevices.ru>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-pci@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, alsa-devel@alsa-project.org,
 Nuno Sa <nuno.sa@analog.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux-phy@lists.infradead.org, Jiri Slaby <jirislaby@kernel.org>,
 linux-staging@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Nikita Kravets <teackot@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Abdel Alkuor <abdelalkuor@geotab.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "Serge E. Hallyn" <serge@hallyn.com>,
 Lyude Paul <lyude@redhat.com>, Kees Cook <keescook@chromium.org>,
 Ray Jui <rjui@broadcom.com>, intel-gfx@lists.freedesktop.org,
 "Steven Rostedt \(Google\)" <rostedt@goodmis.org>,
 Johannes Berg <johannes.berg@intel.com>, Paul Moore <paul@paul-moore.com>,
 Mark Brown <broonie@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Stanley Chang <stanley_chang@realtek.com>, Daniel Vetter <daniel@ffwll.ch>,
 openipmi-developer@lists.sourceforge.net, linux-hwmon@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, linux-mm@kvack.org,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-mmc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Daniel Scally <djrscally@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Eric Biggers <ebiggers@google.com>,
 Tony Lindgren <tony@atomide.com>, Takashi Iwai <tiwai@suse.com>,
 David Howells <dhowells@redhat.com>, linux-ide@vger.kernel.org,
 Huang Rui <ray.huang@amd.com>, "H. Peter Anvin" <hpa@zytor.com>,
 David Airlie <airlied@gmail.com>, Jim Cromie <jim.cromie@gmail.com>,
 linux-leds@vger.kernel.org, Eric Snowberg <eric.snowberg@oracle.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org, qat-linux@intel.com,
 linux-bcachefs@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 platform-driver-x86@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Kalle Valo <kvalo@kernel.org>,
 apparmor@lists.ubuntu.com, Hans de Goede <hdegoede@redhat.com>,
 linux-mediatek@lists.infradead.org, Nicholas Piggin <npiggin@gmail.com>,
 Benjamin Berg <benjamin.berg@intel.com>, linux-tegra@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 intel-xe@lists.freedesktop.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 John Johansen <john.johansen@canonical.com>,
 Liam Girdwood <lgirdwood@gmail.com>, netdev@vger.kernel.org,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Kent Overstreet <kent.overstreet@linux.dev>,
 Adrian Hunter <adrian.hunter@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Damien Le Moal <dlemoal@kernel.org>,
 Daniel Bristot de Oliveira <bristot@kernel.org>,
 Johannes Weiner <hannes@cmpxchg.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linuxppc-dev@lists.ozlabs.org, Helge Deller <deller@gmx.de>,
 Stefan Berger <stefanb@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 4 Jun 2024 at 11:25, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
> (I believe that the new _match_string(str1, size, str2) deserves a better name,
> but since I'm bad with naming stuff, I don't have any good suggestion)

I hated the enormous cc list, so I didn't reply to all. But clearly
everybody else is just doing so.

Anyway, here's my NAK for this patch with explanation:

    https://lore.kernel.org/all/CAHk-=wg5F99-GZPETsasJd0JB0JGcdmmPeHRxCtT4_i83h8avg@mail.gmail.com/

and part of it was the naming, but there were other oddities there too.

           Linus


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DAC90205C
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 Jun 2024 13:28:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sGdCE-00027b-D2;
	Mon, 10 Jun 2024 11:28:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linus.walleij@linaro.org>) id 1sGa4h-00038B-1t
 for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Jun 2024 08:08:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/L5y1Dv6ivY3eszYnYmdXRYc401x9YYY2yBAmmyUG/k=; b=isYo/GfrWWKoCUR3rbU1mrwGPR
 Jl6ww2TRw/nel4lg5WEELm4KPw9mS232vK8B2neE16HTSZVGpyFP0YXbjWlTSwf/RqgAoIdFu/qzb
 MwtNo9W3uy3UaZ2mbl0iEu/dadI+UBu3oXyADpkfjYWh41y3IankG/xHMFQjTa/MD3vk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/L5y1Dv6ivY3eszYnYmdXRYc401x9YYY2yBAmmyUG/k=; b=DXo4t99zjlsq0oAw7Ag+8PlaaR
 V1qN3rOe3Fd3oWiv0m4vOr+NzFfOvmfrpx5x7rZcnTQ5K0xTEE9t0kKTWWUUIYGAQ9su5FpBoYbJn
 fTqNk3joYgRuk6fy/kkyTpKhLRB38EctHkYrekaPm0brY0CRoPfsFG7BfILx0BSaYdMI=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sGa4i-0008Gj-0Q for openipmi-developer@lists.sourceforge.net;
 Mon, 10 Jun 2024 08:08:20 +0000
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-5295e488248so4550154e87.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 10 Jun 2024 01:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1718006892; x=1718611692; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/L5y1Dv6ivY3eszYnYmdXRYc401x9YYY2yBAmmyUG/k=;
 b=FxYUGSsg4CtKIkXizIjH3Vl+zFO4JqO8rQYO915ke3w+Ax89/uslQPSqAIXJwQb1J0
 Q04QMy+Blpn3H/Fh72Ew/J+mp0NK8fXb7Yvft6/7ec6bK5Rl3Xx6wmFTMfnZW6i5Vffv
 0R7y9d5DnyvVdFIguTvPxi3JTckCsv0uj4Hrzn9ThVksCA4Qltf2hNER9k+z6rmATdbO
 2AzG3Ap9pzSKCywazkubUvIhn0hlf5/fTRR++CKYQxo0/FrjmIEteW1KgtI09L8Hhcmu
 JslvT0typwz8+RFlnfPI4XQre2qlV4ZD4tX/B08JPin0fAz5AyJjtW6HXsmFp3AHeP4i
 Lofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718006892; x=1718611692;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/L5y1Dv6ivY3eszYnYmdXRYc401x9YYY2yBAmmyUG/k=;
 b=b0hbV6HTbiVOTiNMhMP4HawJNyZYsLU9DIrlMxiWbOZHFAaMDK439s/yL7GnwuoevB
 leaqO9GAU+N39pKEv69FJDo6HkMNGvxc/51DDL1cOOuPfKRs3hxtHFflOOCNIaGnauBz
 1XzQICBQp8n5O1RskvzTVc0kQ+z/p32yOT5qIZzLvGKXEl6oLbwUHzFt1y3pIGbQLD1J
 0P5Uv83GXQevu745TascB8BFm7or175lW2YJ2/l2Tn4Cmml00yJYR4FY8wlCq6eDhDWw
 EqxMc/rqugP4D9GxiyIYQwviRdtTQBHKYMARAtmPsVAYomgwqORIEmyc0jovLVsyuKwX
 4WHQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUibLClTNO+vbIjEILHAmMI2AQQq7jwj2ZISI2OAxIzJVunQS0Uh+McKN+S5jJ/fFM2HYETsXCUO18t8ZX5C73C7SlAE4z0jXWuMFJIKxhEs18KFVzyidwD
X-Gm-Message-State: AOJu0Yw4wTPEi9FsUfOsncZquXaJmB976s4e9S9CKwrb3AwYZ0amXELf
 /eYK5jfMLTWLcsKs10jwN++fB+KMrC2owqmeuvNWaV4AelKKbL0oGkLSf3e6+sUAwh34mrR6WjB
 GuGHUqlT3rbANULMSvbTBzaM0Ru6KUbXIPvqTiA==
X-Google-Smtp-Source: AGHT+IEoIIaopVbMhKiBzu+ZFeFG117iZrYhuaSy1PLsnicMvCE0nAaF1iUL9hhnUeVtUHqe9i20V059/u6XmSWe6yI=
X-Received: by 2002:a05:6512:234d:b0:52b:be9b:cafe with SMTP id
 2adb3069b0e04-52bbe9bcbadmr5940256e87.21.1718006892189; Mon, 10 Jun 2024
 01:08:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
 <87tti9cfry.fsf@intel.com>
In-Reply-To: <87tti9cfry.fsf@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Jun 2024 10:08:00 +0200
Message-ID: <CACRpkdZFPG_YLici-BmYfk9HZ36f4WavCN3JNotkk8cPgCODCg@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jun 4, 2024 at 9:46 AM Jani Nikula <jani.nikula@linux.intel.com>
    wrote: [Maybe slightly off-topic, ranty] > Why do we think it's a good idea
    to increase and normalize the use of > double-underscore function names across
    the kernel, like > __match_string() in this case? It should mean "reserved
    for the > i [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: linaro.org]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [209.85.167.49 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.167.49 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.49 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sGa4i-0008Gj-0Q
X-Mailman-Approved-At: Mon, 10 Jun 2024 11:28:18 +0000
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
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Ben Segall <bsegall@google.com>, Perry Yuan <perry.yuan@amd.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>, Pavel Machek <pavel@ucw.cz>,
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
 Linus Torvalds <torvalds@linux-foundation.org>,
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
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
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
 linux-bcachefs@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBKdW4gNCwgMjAyNCBhdCA5OjQ24oCvQU0gSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6CgpbTWF5YmUgc2xpZ2h0bHkgb2ZmLXRvcGljLCByYW50
eV0KCj4gV2h5IGRvIHdlIHRoaW5rIGl0J3MgYSBnb29kIGlkZWEgdG8gaW5jcmVhc2UgYW5kIG5v
cm1hbGl6ZSB0aGUgdXNlIG9mCj4gZG91YmxlLXVuZGVyc2NvcmUgZnVuY3Rpb24gbmFtZXMgYWNy
b3NzIHRoZSBrZXJuZWwsIGxpa2UKPiBfX21hdGNoX3N0cmluZygpIGluIHRoaXMgY2FzZT8gSXQg
c2hvdWxkIG1lYW4gInJlc2VydmVkIGZvciB0aGUKPiBpbXBsZW1lbnRhdGlvbiwgbm90IHRvIGJl
IGNhbGxlZCBkaXJlY3RseSIuCj4KPiBJZiBpdCdzIHRvIGJlIHVzZWQgZGlyZWN0bHksIGl0IHNo
b3VsZCBiZSBuYW1lZCBhY2NvcmRpbmdseSwgcmlnaHQ/CgpJdCdzIGEgaHVnZSBtZXNzLiAiX18i
IHByZWZpeCBpcyBqdXN0IHNvIGFtYmlndW91cyBJIHRoaW5rIGl0IGp1c3QKc2hvdWxkbid0IGJl
IHVzZWQgb3IgcHJvbGlmaWVyYXRlZCwgYW5kIGl0IHVzdWFsbHkgYnJlYWtzIFJ1c3R5IFJ1c3Nl
bGxzCkFQSSBydWxlcyB0aW1lcyBvdmVyLgoKQ29uc2lkZXIgX19zZXRfYml0KCkgZnJvbSA8bGlu
dXgvYml0b3BzLmg+LCB1c2VkIGFsbCBvdmVyIHRoZSBwbGFjZSwKaW4gY29udHJhc3Qgd2l0aCBz
ZXRfYml0KCkgZm9yIGV4YW1wbGUsIHdoYXQgZG9lcyAiX18iIHJlcHJlc2VudCBpbgp0aGlzIGNv
bnRleHQgdGhhdCBtYWtlcyBfX3NldF9iaXQoKSBkaWZmZXJlbnQgZnJvbSBzZXRfYml0KCk/CgpJ
dCBtZWFucyAibm9uLWF0b21pYyIuLi4KCkhvdyBkb2VzIGEgcmFuZG9tIGNvbnRyaWJ1dG9yIGtu
b3cgdGhpcz8KClllYWgsIHlvdSBndWVzcyBpdC4gQnkgdGhlIHRva2VuIG9mICJldmVyeWJvZHkg
a25vd3MgdGhhdCIuCihHcmVwLCBnb29nbGUsIHJlcGVhdCBmb3IgdGhlIG51bWJlciBvZiBjb250
cmlidXRvcnMgdG8gdGhlIGtlcm5lbC4pCgpJIHdhcyBjb25zaWRlcmluZyB0byBzZW5kIGEgc2Ny
aXB0IHRvIFRvcnZhbGRzIHRvIGp1c3QgY2hhbmdlIGFsbAp0aGlzIHRvIHNldF9iaXRfbm9uYXRv
bWljKCkgKGV0YykgYnV0IHdhcyBoZXNpdGF0aW5nIGJlY2F1c2UgdGhhdAptYWtlcyB0aGUgbmFt
ZSB1bmFtYmlndW91cyBidXQgbG9uZy4gSSB0aGluayBJIHN0YXllZCBvZmYgaXQKYmVjYXVzZSBj
aGFuZ2luZyBzdHVmZiBsaWtlIHRoYXQgYWxsIG92ZXIgdGhlIHBsYWNlIGNyZWF0ZXMgY2h1cm4K
YW5kIGNodXJuIGlzIGJhZC4KCllvdXJzLApMaW51cyBXYWxsZWlqCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=

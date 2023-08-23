Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF8B7863DA
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Aug 2023 01:05:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qYwuV-0004FB-DH;
	Wed, 23 Aug 2023 23:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linus.walleij@linaro.org>) id 1qYwuU-0004F5-6t
 for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Aug 2023 23:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iEpTjrnLVqxen66G7Uvz7Jyy/E11cVlVrjCW6/VyKj8=; b=GJBmO2VcVGSbtu/ReVo9e1WlGq
 RnYtwcHw4KCV3sK5yrgaMzOakZjj00Oh5DiLbp03Qar37lWvHXvZzS+10JvLEd9/WlRykdUTHFh91
 kjh9y/ZFrpd9icvQxmOkopwMxtnvOP0k9+Mtbc8SY4Z7Li8TIN111HZM+PKFZBQ3BWN0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iEpTjrnLVqxen66G7Uvz7Jyy/E11cVlVrjCW6/VyKj8=; b=hjKZpf0MS31o+WrG3157p3Zi8g
 cmaRbA/v4YXAnmzuu0j0DrrnzWt3ZsT5lUlhAplbsFhi18eZNBDOg8Rgyf25NRz8WJUxEa7KaiEbc
 1hS+KqRizSOnJP9BCtReQz2JmhP2a0ZyYnyX/RojAROYg/Q69FWc0wc2nRKahsPwyGr8=;
Received: from mail-pf1-f178.google.com ([209.85.210.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qYwuQ-00DVjJ-45 for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Aug 2023 23:05:10 +0000
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-68a520dba33so2942007b3a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 23 Aug 2023 16:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1692831900; x=1693436700;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iEpTjrnLVqxen66G7Uvz7Jyy/E11cVlVrjCW6/VyKj8=;
 b=D7XXTKMepaJ5uH5kq1yOZ+AGKJuX6ci+xVAQqD1lfYVzF4S9W6MBbckxmjEfnoyzQY
 ltIeCjgKEz0SwD9iGf+vXHhJIP2W/W8LnNQCfWRUXEo0n88faVtHaJJ+JmcFUX3gmCsj
 TQRoxo82SPS+Wge6cJ6fsAkXC50J8RxHiVvT4EhyRFlV5PqLWyddeMySKQ+HfBom2Rf0
 BUh0w/0lIj0uB3EzYkH05J9muGGe9yUt1I9COrC6NRdKGBRciYh3mJ9ddZAeSdg1foV7
 3yaMJPUhsyOnXaBPivpVHn5+PUbQFRu3p3UFvDFDPoN0WZTzo3U+RE27rfprKMfjqQ6i
 X8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692831900; x=1693436700;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iEpTjrnLVqxen66G7Uvz7Jyy/E11cVlVrjCW6/VyKj8=;
 b=j6/p0wrOb3PurkI8HKLeI7Ms7ov2jW/scTGgdpHUwz72+pzCBnurZ2L1iicJbQFtze
 ssqmPsvFT4pdx2C5QRYWKSChYD8xm2yXruenPNUDZVB+CNd01Gz5ez4w3TiPDePPyrM3
 QT7OviJ9JwvUQovA6aAKvDrMsRMwKEetDOmKwMCcFtpo5ug7FFQtMNpk8NQ0cztkAI0D
 D0qSQXRepPnlvbq6VHeL0LBEtmJRKMiHnzjSmjFUZnQ1TWgIR6D9yZOXC1Z/WMH/c5td
 s6Mi9QYUyvQ14eFfk8ccKFZq/gnwQBn7B0l+ttQn7MCLXMqWKriaISZgb+gZI8g7ch2U
 nyyQ==
X-Gm-Message-State: AOJu0Yx5rdJ2ponqzaWfZtqR76I6+RP6r5ouvuZM+en3GZx62qBZsD8+
 Qrc4ATF3CmH1eM4fMDBsWaBUJL8EIJuNP5yzqX+eU1nJg6p24AmW
X-Google-Smtp-Source: AGHT+IGU5hlAbzjKR6dHf8nG7wjH+gLTIhLdkOAR0BQZYCAzmvxO+0vsobrLpwu8+6G8uJRZXAov+P50unjaO9+ZE7g=
X-Received: by 2002:a25:c08f:0:b0:d09:f39b:cecf with SMTP id
 c137-20020a25c08f000000b00d09f39bcecfmr12862557ybf.9.1692825393910; Wed, 23
 Aug 2023 14:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230823183749.2609013-1-robh@kernel.org>
In-Reply-To: <20230823183749.2609013-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Aug 2023 23:16:22 +0200
Message-ID: <CACRpkdbuB-NotnMXc9vZj-byjk7spCSkZ+Dx=R_eOqoSV5CdTA@mail.gmail.com>
To: Rob Herring <robh@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Aug 23, 2023 at 8:38 PM Rob Herring <robh@kernel.org>
    wrote: > Cleanup bindings dropping the last remaining unneeded quotes. With
    this, > the check for this can be enabled in yamllint. > > Signed-off-by:
    Rob Herring <robh@kernel.org> 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.210.178 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.178 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qYwuQ-00DVjJ-45
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: Drop remaining
 unneeded quotes
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
Cc: linux-hwmon@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-iio@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, linux-mips@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 James Clark <james.clark@arm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-i3c@lists.infradead.org,
 Lars-Peter Clausen <lars@metafoo.de>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Guenter Roeck <linux@roeck-us.net>,
 Mike Leach <mike.leach@linaro.org>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-gpio@vger.kernel.org, M ark Brown <broonie@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-media@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBBdWcgMjMsIDIwMjMgYXQgODozOOKAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgoKPiBDbGVhbnVwIGJpbmRpbmdzIGRyb3BwaW5nIHRoZSBsYXN0IHJlbWFp
bmluZyB1bm5lZWRlZCBxdW90ZXMuIFdpdGggdGhpcywKPiB0aGUgY2hlY2sgZm9yIHRoaXMgY2Fu
IGJlIGVuYWJsZWQgaW4geWFtbGxpbnQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8
cm9iaEBrZXJuZWwub3JnPgoKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxl
aWpAbGluYXJvLm9yZz4KCllvdXJzLApMaW51cyBXYWxsZWlqCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=

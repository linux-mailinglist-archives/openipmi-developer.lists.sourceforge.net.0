Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFF7286752
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC6-0008Fg-2Q; Wed, 07 Oct 2020 18:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <konstantin@linuxfoundation.org>) id 1kOn5t-0005zb-3S
 for openipmi-developer@lists.sourceforge.net; Sat, 03 Oct 2020 19:21:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XDd6ahIT6gLYMAruH7ju3Kkp37FW6zZiiBzXKCROhVM=; b=lmFUZWXEXxt34mKdhtzpY6oISM
 3zznVxEeWhxQw9Bkaud0o8hsmK5sXRThGanR/ko9+iv1KmElRTY+6L81JJZzlXCaKyGxZuQ6mcC/6
 kaHvYqcn3AVwGk8NLsr28QureZ1h9BjcntAwFKTs5BjwfKxiq02/gT30c6sYigNT4Npo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XDd6ahIT6gLYMAruH7ju3Kkp37FW6zZiiBzXKCROhVM=; b=k0N63+ZYBvOsdxqpfRWQxSH6df
 IlTuxCKJsoml1tqd+NJSaRyneNBK8sRrn84J+e3cVMYEOHYxkHMZNT3Otf77wpK8O5TCZLmuegPqZ
 K6Ft2Ii76J55CRaU8vAIhINXPGkQXWiy4BLmG9fvVIEa/aj0IuKdN7lUFuOSWy/fexPM=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kOn5i-001LzI-Q4
 for openipmi-developer@lists.sourceforge.net; Sat, 03 Oct 2020 19:21:21 +0000
Received: by mail-io1-f67.google.com with SMTP id u6so5122803iow.9
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 03 Oct 2020 12:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=XDd6ahIT6gLYMAruH7ju3Kkp37FW6zZiiBzXKCROhVM=;
 b=BSsJMiNovC7ylJtGVK8Pu6lbRNONMCIf6IKbC00u5s1boHBtCnTHfJa/Q5VQbBE7QD
 V4bS1NjUh5BbbOIsGpNZvopY7M6czs5rDiFGIqVWOTcL/cuAcI2C4+QBDfXFlYfMA/pD
 daW0tThIPF0WuvSn4othGKNjDJ5j6h9bkvbes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=XDd6ahIT6gLYMAruH7ju3Kkp37FW6zZiiBzXKCROhVM=;
 b=hjJN9eyuD2PY1+idNjeyFjIJMTNKYxgf+X4x+LmjIjB31a+aelP/cG/mkXWvDZMZ12
 AZz7tYAzbQwvOT2u+ItFBvlud5iBR969nCwW85dCnRE7nmqNw/AN9KTduNC/gAqOuGNj
 wA7bPuoGqkYoddbmnrwLmJZ/6F2TejDiaY6o1glHWsPKk3IsBy/regx3VSeWu6k2kCfP
 umz0vdhjddg4FUM+8NPU++qYYLgZtXT74YbwBnP3lE7raabKDHWvsJRJDXrxdNfv60wu
 eWkbeYXx4by+jbnqj2uWjO82Vn1wg7T04XJTerAPA9jiwDg/fmOZPy63Ra3svJ6QsrUH
 QT1w==
X-Gm-Message-State: AOAM530KWlkeMjT3XgPjn0bQLtGlSQP/SxzS6H0Qmy12iVoukbfyVxjB
 DHpt2f8tP/Q0rzz2Xtj5Rf9WvcpryF21XTmaujw=
X-Google-Smtp-Source: ABdhPJyMY8qIL4KEm7vcRUWiReW42vytsh13A1Usl//XvmLKcZ1mWKVKCTveyFrYEAH8SB+YYGag4g==
X-Received: by 2002:a37:7844:: with SMTP id t65mr7450404qkc.136.1601752505009; 
 Sat, 03 Oct 2020 12:15:05 -0700 (PDT)
Received: from chatter.i7.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id k22sm3882799qkk.13.2020.10.03.12.15.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 12:15:04 -0700 (PDT)
Date: Sat, 3 Oct 2020 15:15:01 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20201003191501.o56tqq63d2buq5ox@chatter.i7.local>
Mail-Followup-To: Joe Perches <joe@perches.com>,
 Mark Brown <broonie@kernel.org>, tools@linux.kernel.org,
 linux-iio@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-crypto@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>, linux-acpi@vger.kernel.org,
 David Lechner <david@lechnology.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 kernel-janitors@vger.kernel.org, drbd-dev@lists.linbit.com,
 openipmi-developer@lists.sourceforge.net,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-ide@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-wireless@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
 <20200929113745.GB4799@sirena.org.uk>
 <db26d49401dc0bd6b9013a603a155f9827f404a4.camel@perches.com>
 <20201001110150.GA6715@sirena.org.uk>
 <f44d19ad596f261c0287c9ab18c45161003efb43.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f44d19ad596f261c0287c9ab18c45161003efb43.camel@perches.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kOn5i-001LzI-Q4
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:25 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-acpi@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>, David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-crypto@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, tools@linux.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Oct 03, 2020 at 11:40:48AM -0700, Joe Perches wrote:
> (Adding tools and Konstantin Ryabitsev)
> 
> There seems to be some mismatch between b4's use of the
> cover letter to a patch series and what maintainers that
> apply a subset of the patches in the patch series.
> 
> The merge description shows the entire patch series as
> applied, but the actual merge is only a subset of the
> series.
> 
> Can this be improved in b4?

So, the following logic should be applied:

- if the entire series was applied, reply to 0/n
- if a subset only is applied, reply to each n/n of the patch that was 
  cherry-picked out of the series

Is that an accurate summary?

-K


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

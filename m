Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CC8569298
	for <lists+openipmi-developer@lfdr.de>; Wed,  6 Jul 2022 21:26:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o9Afb-0000KL-5c; Wed, 06 Jul 2022 19:26:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <olteanv@gmail.com>)
 id 1o9169-0000kN-4m; Wed, 06 Jul 2022 09:13:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WKlacHhWVR2IblvCAgYMcCw7cvtmo7gBzlhxFpijOWM=; b=KL/D5mLjgdtPVSLMccqH65vNY7
 yK//m72elsOYvHGOizOJ3dXVUrzxVGOTJe9dOPtocqhaIntRKB1j6/FItRHBRqvAbC00Sst0tM+up
 B+Q1zQtt55Q8GB68iMsoRHhNrs/Fua8rhG2n6qm+FFKy4dYmXHQoluUdERZdPekPbgo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WKlacHhWVR2IblvCAgYMcCw7cvtmo7gBzlhxFpijOWM=; b=QlgLtsI/Y4Ru1Cm2IbJBMCyoVM
 NHcc7LupvCIaz0nIwqjt+zbaeZuygQs3b/LCpk1KWUsMM8emgFaclp6lD/teuDdXsRfNjhyyi8hgB
 Z82NB2LH3W3iYEJFSF/vzLURCRuBjpA7j3Iu32JU54mJlF9FNoOd2VemyPLUR0Qbvevs=;
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o9165-0005FX-LD; Wed, 06 Jul 2022 09:13:27 +0000
Received: by mail-ed1-f42.google.com with SMTP id x10so11079999edd.13;
 Wed, 06 Jul 2022 02:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=WKlacHhWVR2IblvCAgYMcCw7cvtmo7gBzlhxFpijOWM=;
 b=UyINPEp8aUU7+iO4UvYReAysG8acJi4s0lW7fYS990hIHuI2KgReqshlPjlC0FcdQX
 RWLEJ1iagzj5JHTLAwg1Tfl34CjKErUg06qCwRi5FpbuqXpIfRK0B8kuUc2l5x+40o+8
 2YldATzAdsq2GhIZIL2D0cZi8oKOkVG5Y5xLvvP4kajNiX5yCXAJSyEYBx1RvA9W9SdO
 piij5Lfa0VXVwqnHofYdHxRPOmYTBO/NXTATLm6C9JRKYr2iRvgzlsZTZRGqO8gtc9pI
 zkPBxco6Fa5B8qkZy3WblPhpXY+1PsQ3ol/zLxC+L8wAov5SdI1JA4byrn/VHyXJavbs
 ZPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=WKlacHhWVR2IblvCAgYMcCw7cvtmo7gBzlhxFpijOWM=;
 b=au2awlOyJwdqnlyEwyODXCnhKH0jNxn34S9UixzoyYnl/PYHrXY+w9f5r2/qvgjZNh
 RLC0jahhI9P7aysBpRTJMD3OZC5GibskqC1wQFSgf6mQZ6rxe/nIqcO29gzoz7EF9Z3r
 dd4ph0MTMJc/sJE43nv+XHTQCD40mF+46oMTnT+LFT9AOMOaAVmXs7RzT5kitggkvsmh
 D+rpSNCKnWZjbJ5Ug3ElZzcDvJRRT4aN7rVbBtv+kaxs6evM2QXgKePsvLomp4BlwKUS
 P8ZrtMc/jmCbMOV3N1w/6ovbQW5HvkYp64+Er5Jbf3lA28OgAwtYfJjN4qz+1IocxbDx
 O71A==
X-Gm-Message-State: AJIora8gLCtNIjPRSyIaA0DNjwMXBrmFNFa1gAobUUojXMVg63R3st5i
 uthQIEv8QnAVcb8Pixaoqv8=
X-Google-Smtp-Source: AGRyM1tgzHocOxIjG9HexS+g9z9ap2nsem/HblqVyMjIbl5ZbLhG8nAvflW5PCvUObUWjIPHfLadCA==
X-Received: by 2002:a05:6402:350a:b0:435:df44:30aa with SMTP id
 b10-20020a056402350a00b00435df4430aamr51209856edd.403.1657098799156; 
 Wed, 06 Jul 2022 02:13:19 -0700 (PDT)
Received: from skbuf ([188.26.185.61]) by smtp.gmail.com with ESMTPSA id
 er13-20020a056402448d00b0043a5bcf80a2sm6350790edb.60.2022.07.06.02.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jul 2022 02:13:18 -0700 (PDT)
Date: Wed, 6 Jul 2022 12:13:15 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20220706091315.p5k2jck3rmyjhvqw@skbuf>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jun 28, 2022 at 04:03:12PM +0200, Uwe Kleine-König
    wrote: > From: Uwe Kleine-König > > The value returned by an i2c driver's
    remove function is mostly ignored. > (Only an error message is pr [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [olteanv[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.42 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o9165-0005FX-LD
X-Mailman-Approved-At: Wed, 06 Jul 2022 19:26:40 +0000
Subject: Re: [Openipmi-developer] [PATCH 6/6] i2c: Make remove callback
 return void
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
Cc: alsa-devel@alsa-project.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-staging@lists.linux.dev, kasan-dev@googlegroups.com,
 linux-clk@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 linux-pm@vger.kernel.org, acpi4asus-user@lists.sourceforge.net,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org, patches@opensource.cirrus.com,
 linux-usb@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jun 28, 2022 at 04:03:12PM +0200, Uwe Kleine-K=F6nig wrote:
> From: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> =

> The value returned by an i2c driver's remove function is mostly ignored.
> (Only an error message is printed if the value is non-zero that the
> error is ignored.)
> =

> So change the prototype of the remove function to return no value. This
> way driver authors are not tempted to assume that passing an error to
> the upper layer is a good idea. All drivers are adapted accordingly.
> There is no intended change of behaviour, all callbacks were prepared to
> return 0 before.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Assuming you remove the spurious kasan change:

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

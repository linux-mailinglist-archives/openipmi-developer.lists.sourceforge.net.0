Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71898786596
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Aug 2023 04:57:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qZ0Ww-0006UU-JD;
	Thu, 24 Aug 2023 02:57:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1qZ0Wu-0006UO-Vh
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 02:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q9Fv6zMHUmxIJtQTWw3otja3eb7daBbRUnAPWR3+Kws=; b=H3i32g84ghTzRh3MJdAx7Bd+eR
 o/XuheDnnAd+rfZou9WyHBnQlSk3uDiDrsLaCYdLPHyHhdG7ZRudeqlr15PvTWNMS6GMbunIYegwC
 /XtMwVTqX3K877waNu6aT6z4sB0QMdtYIPES6XwhF9XqIIDss4Pjir4z+dok+eUvBwIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q9Fv6zMHUmxIJtQTWw3otja3eb7daBbRUnAPWR3+Kws=; b=lbXZqVQRvbi0Hm6BKe/c5/8ax1
 ySzYcKh6wO+QXO4HFxbzSqgrGOEQGhX28zZFHNBiuYS1puOF5D2hCu6g7MFP6aR0ddJbrRR0OQGXN
 nK2n5YA8VqGQ6dkhHzb/nv6XZeWWJsWCYL1BYfITpDp86zhm1pMKox4FZItabUrE1W1Q=;
Received: from mail-qk1-f174.google.com ([209.85.222.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qZ0Wu-0002yS-6N for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 02:57:05 +0000
Received: by mail-qk1-f174.google.com with SMTP id
 af79cd13be357-76e09202322so89455185a.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 23 Aug 2023 19:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692845818; x=1693450618;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=Q9Fv6zMHUmxIJtQTWw3otja3eb7daBbRUnAPWR3+Kws=;
 b=EVi36tdUqJMlOvMF5BKp2qBduN+pjKuz6Us6qWN0euQMxX//FBn2tkevUvmQ0jT7dy
 QIYTSLIrOwJJrbwKo9ZkDfR2N+fo2G2cnY9a7T0gyOxaEX87NC1xNeL/UwLcOFtHALic
 ZLiva7jbc5XlX1Ewghy60+GynWZHY461VYZBL+rKjJr0gJc6PhtDfsvnnfDKMTF+nmSY
 b67dYc7Ry1QTt8dSvag7E3m3wxL+T/zxdYaloB7x8dxtgj588ko4UqYQcmY36CHVtxWt
 iYF3G4mM3FFe+F+/+nyQoaPThIAVJk/g4AuxUBKaCu+vIZtlOzjd8HrBF87f6fV68U4J
 kBtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692845818; x=1693450618;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Q9Fv6zMHUmxIJtQTWw3otja3eb7daBbRUnAPWR3+Kws=;
 b=YlmZnw7fsP4J+ZxGzTiT+dkzBYRqnCmtakho7qi9BBmftIiBqfdbU9GaGHpbLneguq
 S1sYSndlrEx34d3pVNU+a0VoVmK+8cVkpfstSLRFaSnTqL+qhXc59SpGydmlxblxr2hM
 Wc2LwB/SMar9ThJYF0p4UyLEptbUiBOYFIR6SqgZjJ4KPQEr3PWlG3IcCx94kjixQpyV
 pI6HeKye5/dqOD77kv9zWx/N49tbqAb6+hlIE60OMsx8V6WOaBT41QAr6pakisT2TxKI
 +72Dc6SQC70xqQrXjojpacDyxKkIxNgSyFcJqo48wAwxS97riLnVs8QFALj9vKE0pZjn
 EEOg==
X-Gm-Message-State: AOJu0Yzq9M0UEJVX5ZARpbqZCT/B8cFjPFdc4UG3DqPgY7seMJJQj8bm
 DWSL4M9VuZTDp8d/svXJmZI=
X-Google-Smtp-Source: AGHT+IGfrlLR+AVm4rNxdl7JpMbBTxVzD5wv8rDFBbxVFAKSvhzmEDzdpW59h59MCcReusMlyP0fPw==
X-Received: by 2002:a05:620a:290e:b0:767:261d:1ef6 with SMTP id
 m14-20020a05620a290e00b00767261d1ef6mr19366337qkp.59.1692845818303; 
 Wed, 23 Aug 2023 19:56:58 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 z137-20020a63338f000000b0055386b1415dsm4743735pgz.51.2023.08.23.19.56.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Aug 2023 19:56:57 -0700 (PDT)
Date: Wed, 23 Aug 2023 19:56:56 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Rob Herring <robh@kernel.org>
Message-ID: <0f6ee9b9-3792-4865-8183-c50d4f3896e1@roeck-us.net>
References: <20230823183749.2609013-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823183749.2609013-1-robh@kernel.org>
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 23, 2023 at 01:28:47PM -0500, Rob Herring wrote:
 > Cleanup bindings dropping the last remaining unneeded quotes. With this,
 > the check for this can be enabled in yamllint. > > Signed-off- [...] 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.174 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qZ0Wu-0002yS-6N
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
 Linus Walleij <linus.walleij@linaro.org>,
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
 Ulf Hansson <ulf.hansson@linaro.org>, Mike Leach <mike.leach@linaro.org>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, coresight@lists.linaro.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-gpio@vger.kernel.org,
 M ark Brown <broonie@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-media@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 23, 2023 at 01:28:47PM -0500, Rob Herring wrote:
> Cleanup bindings dropping the last remaining unneeded quotes. With this,
> the check for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/hwmon/iio-hwmon.yaml         |  4 ++--
>  .../bindings/watchdog/toshiba,visconti-wdt.yaml      |  4 ++--

For hwmon and watchdog:

Acked-by: Guenter Roeck <linux@roeck-us.net>

Guenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

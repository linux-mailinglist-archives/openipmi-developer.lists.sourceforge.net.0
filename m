Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C68786EEA
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Aug 2023 14:21:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qZ9L7-00013O-QM;
	Thu, 24 Aug 2023 12:21:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <miquel.raynal@bootlin.com>) id 1qZ5Xo-0006d6-Gt
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 08:18:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5iy90UPBEpYr9Ks6Pdn0quIrhraOkWjQhbq0wpTYDBM=; b=aRz6yQCZqPkvzEgMuHkBHXu6Nv
 vKJT/AzFaROUTItSJ1Qvy4UYSPazXBo/6+Z4QOwGryAM2zKLfNhjBb4B/hLduN9aMsaNazx/7P1CR
 epDh6bLQM8wL4YvVEBwWwTVhBO2e1x0kLLH1os1l7bA5IfN0fAwYj/fOETJPPWZAP+bY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5iy90UPBEpYr9Ks6Pdn0quIrhraOkWjQhbq0wpTYDBM=; b=kBMB2Iq/WLGyp9+/MXfNcOARpK
 c14P3PC8kCDl7k0dTKuSclQG1vABkOffb54salUJiyUWw/YhVxMd+BVmnoumSYJ9fXO8vG4akas1H
 UcpjYRq/HRusDOClCKtv/AkWE8qoy/Mannu5pCGxX89mW8m1JPEPB4pO+YDsfw1nY92M=;
Received: from mslow1.mail.gandi.net ([217.70.178.240])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qZ5Xg-0005Kd-T5 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 08:18:21 +0000
Received: from relay3-d.mail.gandi.net (unknown [217.70.183.195])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id D8F19CEF5F
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Aug 2023 08:07:02 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A58C56000A;
 Thu, 24 Aug 2023 08:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1692864415;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5iy90UPBEpYr9Ks6Pdn0quIrhraOkWjQhbq0wpTYDBM=;
 b=XizArq1AmE8u1PlEKB4g8NjhXu0zjN5QFi79zW24HbCXBErrvogWggSj9arbq+KhrFKB+O
 uNFRNoDum6eiw6b1FusyrSJGtFu52oxgQ2aZxvU94bbYQ6VeF6C6+aaiIjsvth2eXnzCxv
 fG9eW8n1Z7MjHVpGZKNTWsEMTPK6e/12/dzQCGsxQ9uVm1S5ddD2cTGo7DkevkDqa3KU8H
 w1ZbBKh6080wCbuer4WK7KK05Jg/bzrwy8FVePWax3FVuMu3JvmQ+yeRvZQEooNr0+hv60
 bNmbWEfq0tXu55UOuMr9+VZp+jY7MAOxARwAMNEhCJ6ymjR+mtZvO+UxG0Uu9Q==
Date: Thu, 24 Aug 2023 10:06:48 +0200
To: Rob Herring <robh@kernel.org>
Message-ID: <20230824100648.5b6e8b70@xps-13>
In-Reply-To: <20230823183749.2609013-1-robh@kernel.org>
References: <20230823183749.2609013-1-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Rob, robh@kernel.org wrote on Wed, 23 Aug 2023 13:28:47
 -0500: > Cleanup bindings dropping the last remaining unneeded quotes. With
 this, > the check for this can be enabled in yamllint. > > Signed-off-by:
 Rob Herring <robh@kernel.org> 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.240 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qZ5Xg-0005Kd-T5
X-Mailman-Approved-At: Thu, 24 Aug 2023 12:21:29 +0000
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
From: Miquel Raynal via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Miquel Raynal <miquel.raynal@bootlin.com>
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
 linux-i3c@lists.infradead.org, Lars-Peter Clausen <lars@metafoo.de>,
 Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
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

SGkgUm9iLAoKcm9iaEBrZXJuZWwub3JnIHdyb3RlIG9uIFdlZCwgMjMgQXVnIDIwMjMgMTM6Mjg6
NDcgLTA1MDA6Cgo+IENsZWFudXAgYmluZGluZ3MgZHJvcHBpbmcgdGhlIGxhc3QgcmVtYWluaW5n
IHVubmVlZGVkIHF1b3Rlcy4gV2l0aCB0aGlzLAo+IHRoZSBjaGVjayBmb3IgdGhpcyBjYW4gYmUg
ZW5hYmxlZCBpbiB5YW1sbGludC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9i
aEBrZXJuZWwub3JnPgoKQWNrZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+ICMgZm9yIG10ZAoKVGhhbmtzLApNaXF1w6hsCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D626A3E5D
	for <lists+openipmi-developer@lfdr.de>; Mon, 27 Feb 2023 10:31:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pWZr8-0003vj-Bi;
	Mon, 27 Feb 2023 09:31:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1pWZr5-0003vd-Nq
 for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 09:31:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RZ7tgd2yMldNRnjyOaSsgByklv9W+sBvCfRkPHDmb94=; b=SfG7N8EbQRysNxFtG9ngsA/CK7
 AnJAQDsFCXW+lqirdwOKCFjSybjv4eZicNRGc2QJOFVETf0aLAq2nhnsBMQI7+eqc0WiW3OTWOgE/
 4CJO1KWWR8OVhNH88MKUqrPQ6rOYz7anRBvqBj8XAtzSEtudEEHHO5QSqlfEJfGzCxNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RZ7tgd2yMldNRnjyOaSsgByklv9W+sBvCfRkPHDmb94=; b=VUQiqwaAalSmyGxZm1dUFEhdSV
 fTSP0bZzz9sVqGVpf0FFxr+lAOHSsQdIdPIN+r7Qq/2P5Ul57LPdywEjTRsPvDiDOj9zZi2G6KFSy
 9Rc3nngQqfRhirxo9g43YN/i6bSitbDGIadNXw6WCfjPIOd+8bOfTQeqUp65YjxPczKM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pWZr3-002aUf-6z for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 09:31:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1677490287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RZ7tgd2yMldNRnjyOaSsgByklv9W+sBvCfRkPHDmb94=;
 b=gR45BAQoRRR7BQ4XcFbcUHwQ3FeiufoFMFx4RiGFo1SXaHCr3dj6a9Simf/n0Ms0zvOujC
 Ubw7JpRvbCCPJ4S1rQZg4ovL1ED1AQZwmKZ5flSWigKOX1yJmANZHHrwRxOSsD/sRUDnYV
 gl4YnA3YFImC5i35LzHZY8QMmS9gBHQ=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-532-VcaUtTYgOmil9bKitQjRDQ-1; Mon, 27 Feb 2023 04:31:25 -0500
X-MC-Unique: VcaUtTYgOmil9bKitQjRDQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 ec13-20020a0564020d4d00b004a621e993a8so7724317edb.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 27 Feb 2023 01:31:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RZ7tgd2yMldNRnjyOaSsgByklv9W+sBvCfRkPHDmb94=;
 b=8Icl/tHhCH01XApZ563/eTNfUZRFKVCuutK1XSuU7znsKsFIuH7QVRHUq4cSWgs/u4
 JK609tQnBOA0suFHrTgUaZxWhy0a3Qx1OOIkveea7EdS4EtmYu/8HSIpPZMcf40pwDKV
 UGaTq4gDm1lXyPSwGLFoCDFRxoZLsLM0Bb3eEZ0KS9fbnlot1txd/0zRZsTtvtX4v02s
 KvurBsto1qVLZEjSk8JgwAjVcEmHHCvW1hb2mbVqml2EXvR6pFaN9j09q5uXodG3PnfW
 HTAp5N/SXw3ChA6awO5mC8CzEJjNFijaSf2ClklhGkEaMIH9hCIMF+s2jrAAYMUBCTAj
 ekHg==
X-Gm-Message-State: AO0yUKXMDwT8erLIDjeivQC7H6+xKMcK+O86fSSPgUcs7RYlbW58qmSz
 m+tOd53QIxk3jV9LNkitrCKP928k/qQ5Io3bxXQiI0zUg8xzf1WZDeUbJIAbztCix6I0inKv+ts
 Ud1v3XvqNtkIpkL4MyvTSunUf6qNBexS9Gaw4pfrm
X-Received: by 2002:a17:906:4d8c:b0:8ae:f73e:233f with SMTP id
 s12-20020a1709064d8c00b008aef73e233fmr36187941eju.32.1677490284509; 
 Mon, 27 Feb 2023 01:31:24 -0800 (PST)
X-Google-Smtp-Source: AK7set+NbVSpt4yOAnECcpAr2/cCoG6u5mlrIrkJajmml4ubXI2EjR7IrG3eLzjCQWCzYYep+F5FNw==
X-Received: by 2002:a17:906:4d8c:b0:8ae:f73e:233f with SMTP id
 s12-20020a1709064d8c00b008aef73e233fmr36187918eju.32.1677490284210; 
 Mon, 27 Feb 2023 01:31:24 -0800 (PST)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 qq10-20020a17090720ca00b008e09deb6610sm2942505ejb.200.2023.02.27.01.31.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Feb 2023 01:31:23 -0800 (PST)
Message-ID: <7dd27ec5-0619-128d-8407-6711a05ef271@redhat.com>
Date: Mon, 27 Feb 2023 10:31:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
References: <20230226053953.4681-1-rdunlap@infradead.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230226053953.4681-1-rdunlap@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Randy, On 2/26/23 06:39, Randy Dunlap wrote: > REGMAP is
 a hidden (not user visible) symbol. Users cannot set it > directly thru "make
 *config", so drivers should select it instead of > depending on it if th
 [...] Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pWZr3-002aUf-6z
Subject: Re: [Openipmi-developer] [PATCH 0/8] drivers: select REGMAP instead
 of depending on it
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Vadim Pasternak <vadimp@nvidia.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 platform-driver-x86@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 Oskar Senft <osk@google.com>, Bin Gao <bin.gao@intel.com>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Lee Jones <lee@kernel.org>, linux-serial@vger.kernel.org,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 linux-gpio@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 openipmi-developer@lists.sourceforge.net, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Riku Voipio <riku.voipio@linaro.org>, Michael Shych <michaelsh@nvidia.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Walle <michael@walle.cc>,
 Yegnesh S Iyer <yegnesh.s.iyer@intel.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Randy,

On 2/26/23 06:39, Randy Dunlap wrote:
> REGMAP is a hidden (not user visible) symbol. Users cannot set it
> directly thru "make *config", so drivers should select it instead of
> depending on it if they need it.
> 
> Consistently using "select" or "depends on" can also help reduce
> Kconfig circular dependency issues.
> 
> REGMAP is selected 94 times and is depended on 11 times in
> current linux-next. Eliminate the uses of "depends on" by
> converting them to "select".

Thank you for your work on this. Mixing of depends on vs select
is a real problem with many Kconfig symbols.

>  [PATCH 1/8] ipmi: ASPEED_BT_IPMI_BMC: select REGMAP_MMIO instead of depending on it
>  [PATCH 2/8] clk: HI655X: select REGMAP instead of depending on it
>  [PATCH 3/8] gpio: GPIO_REGMAP: select REGMAP instead of depending on it
>  [PATCH 4/8] leds: TI_LMU_COMMON: select REGMAP instead of depending on it
>  [PATCH 5/8] platform: mellanox: select REGMAP instead of depending on it
>  [PATCH 6/8] platform: x86: MLX_PLATFORM: select REGMAP instead of depending on it
>  [PATCH 7/8] thermal: intel: BXT_PMIC: select REGMAP instead of depending on it
>  [PATCH 8/8] serial: 8250: ASPEED_VUART: select REGMAP instead of depending on it

For patch 5/8 and 6/8, do you want me to merge them through the pdx86
(platform-drivers-x86) tree, or do you plan to merge this whole series
in one go through some other tree?

If you plan to merge the whole series through some other tree,
here is my acked by for doing so for 5/8 and 6/8:

Acked-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans




> 
> diffstat:
>  drivers/char/ipmi/Kconfig         |    3 ++-
>  drivers/clk/Kconfig               |    2 +-
>  drivers/gpio/Kconfig              |    2 +-
>  drivers/leds/Kconfig              |    2 +-
>  drivers/platform/mellanox/Kconfig |    9 ++++-----
>  drivers/platform/x86/Kconfig      |    3 ++-
>  drivers/thermal/intel/Kconfig     |    3 ++-
>  drivers/tty/serial/8250/Kconfig   |    3 ++-
>  8 files changed, 15 insertions(+), 12 deletions(-)
> 
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Riku Voipio <riku.voipio@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: linux-clk@vger.kernel.org
> Cc: Michael Walle <michael@walle.cc>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: linux-gpio@vger.kernel.org
> Cc: Dan Murphy <dmurphy@ti.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
> Cc: Lee Jones <lee@kernel.org>
> Cc: linux-leds@vger.kernel.org
> Cc: Darren Hart <dvhart@infradead.org>
> Cc: Hans de Goede <hdegoede@redhat.com>
> Cc: Michael Shych <michaelsh@nvidia.com>
> Cc: Mark Gross <markgross@kernel.org>
> Cc: Vadim Pasternak <vadimp@nvidia.com>
> Cc: platform-driver-x86@vger.kernel.org
> Cc: Yegnesh S Iyer <yegnesh.s.iyer@intel.com>
> Cc: Bin Gao <bin.gao@intel.com>
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Amit Kucheria <amitk@kernel.org>
> Cc: linux-pm@vger.kernel.org
> Cc: Oskar Senft <osk@google.com>
> Cc: linux-serial@vger.kernel.org
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B08F6A6C90
	for <lists+openipmi-developer@lfdr.de>; Wed,  1 Mar 2023 13:47:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXLrn-0001LN-7H;
	Wed, 01 Mar 2023 12:47:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1pXLrl-0001LH-VY
 for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 12:47:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PrHWi0O3bp5TW073HxIoo2GqwQh60ydUW1vLbyoS8FU=; b=WjNgk4pqUoKGmeLmN/tXxNxrlM
 jYl5HcOblWLne0CYDYjptLR392HyVC0Pl53syN5EvJuzbWRsKJ+E1kgCFMak1w0huOXJ8EdVPcwan
 DdrQErqAhi/gek/xLtsGZ101csIERDJ6mMH7Jn0pwnhHod7YRRwsEyy9LeQ87t/BHmgY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PrHWi0O3bp5TW073HxIoo2GqwQh60ydUW1vLbyoS8FU=; b=ILh/6cw/zgO08K9S9rzgWpqCT5
 4raNUcUfpWeYpt3BU47/UNj1RIYPFbKpF3lOGL4ehZcn39MpZG1/1QbWy+dOohAZ8S4/+ACdJML/a
 RfRESqnnb4Z+rb6Vy0aXwtatEknH5yx9ozajolynXa9e36Ia0SqB3wnZbSjoUZlYwZT4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXLrg-00AfGu-I9 for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Mar 2023 12:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1677674833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PrHWi0O3bp5TW073HxIoo2GqwQh60ydUW1vLbyoS8FU=;
 b=Qf3YcG57zAu7SpcntW0H/Ru8hbbGgU2H5gbnHEpaxgPGvm4PPe+eKCn568kVbKMLXm8FXF
 Z9ZbZtotE+iWDWD5IdTC3My+Ri96olxZGVhEhx7BZLcdsJ1p+W1Zyf6CYg68X8BRgag8B/
 Fk7M3aFfiNkBbA9pmo58edGmSGNSAuE=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-339-MBxSnux9PeeN5kub5QoISw-1; Wed, 01 Mar 2023 07:47:10 -0500
X-MC-Unique: MBxSnux9PeeN5kub5QoISw-1
Received: by mail-ed1-f70.google.com with SMTP id
 y24-20020aa7ccd8000000b004be3955a42eso786166edt.22
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 01 Mar 2023 04:47:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PrHWi0O3bp5TW073HxIoo2GqwQh60ydUW1vLbyoS8FU=;
 b=K9zzax4YJ/iRt0YoOOUzSCljyieXm5HFQTkNZNiyOivAImqxfv2M3JfrySwhlBJBKj
 UKwGWya5ictwVhiTxJUguGcQFqYGcmSRYPOZEt44sDo31x0ix4dvG4Wpx0je0Y22ssJD
 lTQJYUGVPyXKCdNlKqfNVWGcX/RsaHYhBchUF8yVBF3E9PsoiXbCE2JEu3AtAYaIzPVn
 ubMVz8hSAnvS03lLCvQCxqzh7Fd0bMpIbq7kaSorixkFI/CalFcSQhhONIoksd7vVE1A
 t5KO+wHmYcu89o9eYUrRsFGYYXBaUi7SQ1oaCbBM6pqSRfxInAnL5tvQ3RWb8OsAn2yt
 TtGQ==
X-Gm-Message-State: AO0yUKXIUxm5/5TdmNUhZRPozEgvDa3awLzQVVyXhbkmttVD91I59Qk1
 KVlFFPN4+CPiqy5lrAG+fbJD2NDMiGrJStwWtNfvfcDouOhsgBipx21y+U5CUeZcvuMzZdLlZsX
 vMBRHMe0JROyiVNdG0XTUb88rZjRopwjj1E4TSM5l
X-Received: by 2002:aa7:d6c4:0:b0:4af:59c0:744a with SMTP id
 x4-20020aa7d6c4000000b004af59c0744amr7757588edr.24.1677674829575; 
 Wed, 01 Mar 2023 04:47:09 -0800 (PST)
X-Google-Smtp-Source: AK7set/gegt3wNPFIA5UaAFSkM0H/Cu2JETEa5VzADkRpzuOeLZLY8c4YHH4dVV9FidRJQJWbeU9sQ==
X-Received: by 2002:aa7:d6c4:0:b0:4af:59c0:744a with SMTP id
 x4-20020aa7d6c4000000b004af59c0744amr7757547edr.24.1677674829268; 
 Wed, 01 Mar 2023 04:47:09 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 b18-20020a50b412000000b004bda465da32sm374934edh.1.2023.03.01.04.47.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Mar 2023 04:47:08 -0800 (PST)
Message-ID: <5bb49015-0a9c-5b9d-b22c-38011439c984@redhat.com>
Date: Wed, 1 Mar 2023 13:47:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
References: <20230226053953.4681-1-rdunlap@infradead.org>
 <7dd27ec5-0619-128d-8407-6711a05ef271@redhat.com>
 <6a95a337-2972-427f-635d-5ef4e91a82fa@infradead.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <6a95a337-2972-427f-635d-5ef4e91a82fa@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 2/27/23 17:07, Randy Dunlap wrote: > > > On 2/27/23
 01:31, Hans de Goede wrote: >> Hi Randy, >> >> On 2/26/23 06:39, Randy Dunlap
 wrote: >>> REGMAP is a hidden (not user visible) symbol. Users cann [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pXLrg-00AfGu-I9
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

Hi,

On 2/27/23 17:07, Randy Dunlap wrote:
> 
> 
> On 2/27/23 01:31, Hans de Goede wrote:
>> Hi Randy,
>>
>> On 2/26/23 06:39, Randy Dunlap wrote:
>>> REGMAP is a hidden (not user visible) symbol. Users cannot set it
>>> directly thru "make *config", so drivers should select it instead of
>>> depending on it if they need it.
>>>
>>> Consistently using "select" or "depends on" can also help reduce
>>> Kconfig circular dependency issues.
>>>
>>> REGMAP is selected 94 times and is depended on 11 times in
>>> current linux-next. Eliminate the uses of "depends on" by
>>> converting them to "select".
>>
>> Thank you for your work on this. Mixing of depends on vs select
>> is a real problem with many Kconfig symbols.
>>
>>>  [PATCH 1/8] ipmi: ASPEED_BT_IPMI_BMC: select REGMAP_MMIO instead of depending on it
>>>  [PATCH 2/8] clk: HI655X: select REGMAP instead of depending on it
>>>  [PATCH 3/8] gpio: GPIO_REGMAP: select REGMAP instead of depending on it
>>>  [PATCH 4/8] leds: TI_LMU_COMMON: select REGMAP instead of depending on it
>>>  [PATCH 5/8] platform: mellanox: select REGMAP instead of depending on it
>>>  [PATCH 6/8] platform: x86: MLX_PLATFORM: select REGMAP instead of depending on it
>>>  [PATCH 7/8] thermal: intel: BXT_PMIC: select REGMAP instead of depending on it
>>>  [PATCH 8/8] serial: 8250: ASPEED_VUART: select REGMAP instead of depending on it
>>
>> For patch 5/8 and 6/8, do you want me to merge them through the pdx86
>> (platform-drivers-x86) tree, or do you plan to merge this whole series
>> in one go through some other tree?
> 
> Hi Hans,
> Please merge them thru the pdx86 tree.

Ok, I've applied patch 5/8 + 6/8 to my review-hans branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

I'll rebase that branch once 6.3-rc1 is out and then push the rebased
patch to the fixes branch and include it in my next 6.3 fixes pull-req
to Linus.

Regards,

Hans





>>>
>>> diffstat:
>>>  drivers/char/ipmi/Kconfig         |    3 ++-
>>>  drivers/clk/Kconfig               |    2 +-
>>>  drivers/gpio/Kconfig              |    2 +-
>>>  drivers/leds/Kconfig              |    2 +-
>>>  drivers/platform/mellanox/Kconfig |    9 ++++-----
>>>  drivers/platform/x86/Kconfig      |    3 ++-
>>>  drivers/thermal/intel/Kconfig     |    3 ++-
>>>  drivers/tty/serial/8250/Kconfig   |    3 ++-
>>>  8 files changed, 15 insertions(+), 12 deletions(-)
>>>
>>> Cc: Andrew Jeffery <andrew@aj.id.au>
>>> Cc: Corey Minyard <minyard@acm.org>
>>> Cc: openipmi-developer@lists.sourceforge.net
>>> Cc: Arnd Bergmann <arnd@arndb.de>
>>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>> Cc: Riku Voipio <riku.voipio@linaro.org>
>>> Cc: Stephen Boyd <sboyd@kernel.org>
>>> Cc: Michael Turquette <mturquette@baylibre.com>
>>> Cc: linux-clk@vger.kernel.org
>>> Cc: Michael Walle <michael@walle.cc>
>>> Cc: Linus Walleij <linus.walleij@linaro.org>
>>> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
>>> Cc: linux-gpio@vger.kernel.org
>>> Cc: Dan Murphy <dmurphy@ti.com>
>>> Cc: Pavel Machek <pavel@ucw.cz>
>>> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
>>> Cc: Lee Jones <lee@kernel.org>
>>> Cc: linux-leds@vger.kernel.org
>>> Cc: Darren Hart <dvhart@infradead.org>
>>> Cc: Hans de Goede <hdegoede@redhat.com>
>>> Cc: Michael Shych <michaelsh@nvidia.com>
>>> Cc: Mark Gross <markgross@kernel.org>
>>> Cc: Vadim Pasternak <vadimp@nvidia.com>
>>> Cc: platform-driver-x86@vger.kernel.org
>>> Cc: Yegnesh S Iyer <yegnesh.s.iyer@intel.com>
>>> Cc: Bin Gao <bin.gao@intel.com>
>>> Cc: Zhang Rui <rui.zhang@intel.com>
>>> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
>>> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
>>> Cc: Amit Kucheria <amitk@kernel.org>
>>> Cc: linux-pm@vger.kernel.org
>>> Cc: Oskar Senft <osk@google.com>
>>> Cc: linux-serial@vger.kernel.org
>>>
>>
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

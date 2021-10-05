Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B1D422D33
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 17:59:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXmr9-0002r0-Au; Tue, 05 Oct 2021 15:59:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1mXZnu-00033X-7V
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 02:03:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WZWqxRhSm0wLUNBnfyuC+B/rrQM3O25LpejmzAYBNQI=; b=dYQomhGoGVNkQIA+cMOhFfmfNl
 WiS/2JooT9euRRfOaDfudiMLRsRhDoZh7AwmJBn5Ivj4R6jSl2xJOYisf9KpAEnxGNtmTeM0NvJOv
 X4BWR1lL8rPA7j3PLizJW9dQx0K8a/HXl+Prf+pNeULwsD6BtvbwHM+/nTjiJrIrhkyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WZWqxRhSm0wLUNBnfyuC+B/rrQM3O25LpejmzAYBNQI=; b=i6bOM2ezxqGU21cwNKAwJnqmG4
 r7wSB8aGoEyp1dn637DaRKu7KNLcgDe8Kroy0f2rd1IZ1XKqRKqM0t3Oh34i/RYD26M8Z6KZF6hND
 E80BC61fVx4/kv442vmpCiG74qKgklivj+q802HpbevJlo3FC6B7pjlPFI4uSMT4TXXE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXZnp-005ecU-Le
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 02:03:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=WZWqxRhSm0wLUNBnfyuC+B/rrQM3O25LpejmzAYBNQI=; b=E7OYIpmEw5pgRAZrkM4PxexlFp
 zsDwYMh9WE1l54DvYWcifAfdU59sKGk9U5nJfR5vxgX6Yg7202km9vBwnCIUBqjPwkSZN+s4b5xhu
 p2umUvJWW3rHV4Ihh1d9BrcK7NjcGSm7LM5Iq3BaQS9fPNd/sQBYtH3nW9MFZ3xIYxMd31LLMnxT1
 b35+Zc5MVXGjp22LD5y6uKTzo9PelatS7UBveB8F9SeuSUDCoOrrtI34rscTb994HD8/n1be82RmM
 kWcNuJVxNIeqSq9hnONuy9p1syPNg2ByiyWRTOI7BUFDXPpR+SfxR7z9gl273A6nRj7u0zdEn8iP5
 k9n9/psg==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXZF1-008XHw-I9; Tue, 05 Oct 2021 01:27:35 +0000
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net
References: <20211005004019.2670691-1-minyard@acm.org>
 <20211005004019.2670691-4-minyard@acm.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <1d2c2c50-8f79-03ec-5c5c-e1cd8ce07b3d@infradead.org>
Date: Mon, 4 Oct 2021 18:27:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211005004019.2670691-4-minyard@acm.org>
Content-Language: en-US
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 10/4/21 5:40 PM, minyard@acm.org wrote: > From: Corey
 Minyard <cminyard@mvista.com> > > This provides access to the management
 controllers on an IPMB bus to a > device sitting on the IPMB bus. It a [...]
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mXZnp-005ecU-Le
X-Mailman-Approved-At: Tue, 05 Oct 2021 15:59:48 +0000
Subject: Re: [Openipmi-developer] [PATCH 3/5] ipmi:ipmb: Add initial support
 for IPMI over IPMB
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi,

On 10/4/21 5:40 PM, minyard@acm.org wrote:
> From: Corey Minyard <cminyard@mvista.com>
> 
> This provides access to the management controllers on an IPMB bus to a
> device sitting on the IPMB bus.  It also provides slave capability to
> respond to received messages on the bus.
> 
> Signed-off-by: Corey Minyard <minyard@acm.org>
> Tested-by: Andrew Manley <andrew.manley@sealingtech.com>
> Reviewed-by: Andrew Manley <andrew.manley@sealingtech.com>
> ---
>   drivers/char/ipmi/Kconfig     |   9 +
>   drivers/char/ipmi/Makefile    |   1 +
>   drivers/char/ipmi/ipmi_ipmb.c | 510 ++++++++++++++++++++++++++++++++++
>   3 files changed, 520 insertions(+)
>   create mode 100644 drivers/char/ipmi/ipmi_ipmb.c
> 
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> index 249b31197eea..1c92209f023b 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -75,6 +75,15 @@ config IPMI_SSIF
>   	  have a driver that must be accessed over an I2C bus instead of a
>   	  standard interface.  This module requires I2C support.
>   
> +config IPMI_IPMB
> +       tristate 'IPMI IPMB interface'
> +       select I2C

How can this select I2C unconditionally? At this point we don't
even know if this platform has/supports I2C.

Ditto for IPMI_SSIF in the current Kconfig file, while
IPMB_DEVICE_INTERFACE depends on I2C (as it should IMO).



> +       help
> +	 Provides a driver for a system running right on the IPMB bus.
> +	 It supports normal system interface messages to a BMC on the IPMB
> +	 bus, and it also supports direct messaging on the bus using
> +	 IPMB direct messages.  This module requires I2C support.

<form-letter-bot>

Please follow coding-style for Kconfig files:

(from Documentation/process/coding-style.rst, section 10):

For all of the Kconfig* configuration files throughout the source tree,
the indentation is somewhat different.  Lines under a ``config`` definition
are indented with one tab, while help text is indented an additional two
spaces.

> +
>   config IPMI_POWERNV
>   	depends on PPC_POWERNV
>   	tristate 'POWERNV (OPAL firmware) IPMI interface'


> diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
> new file mode 100644
> index 000000000000..b10a1fd9c563
> --- /dev/null
> +++ b/drivers/char/ipmi/ipmi_ipmb.c
> @@ -0,0 +1,510 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/*
> + * Driver to talk to a remote management controller on IPMB.
> + */
> +

[...]

> +
> +static int ipmi_ipmb_start_processing(void            *send_info,

Odd spacing/formatting above.

> +				      struct ipmi_smi *new_intf)
> +{
> +	struct ipmi_ipmb_dev *iidev = send_info;
> +
> +	iidev->intf = new_intf;
> +	iidev->ready = true;
> +	return 0;
> +}
> +
> +
> +static void ipmi_ipmb_sender(void                *send_info,

Ditto.

> +			     struct ipmi_smi_msg *msg)
> +{


-- 
~Randy


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

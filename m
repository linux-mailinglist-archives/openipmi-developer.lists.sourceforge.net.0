Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6628954CDC8
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jun 2022 18:07:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1VY1-0006vZ-5T; Wed, 15 Jun 2022 16:07:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rdunlap@infradead.org>) id 1o1VXz-0006vS-0S
 for openipmi-developer@lists.sourceforge.net; Wed, 15 Jun 2022 16:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0pNvw0AJcxHmfaL+wnn2XxzmONSyI3eLqIqKcEGrFlw=; b=WRioMBeSWWX3TEOAFsqOpPQlIe
 RliyAIEmGEVn/pzvo2dDf9Ek5Zdni6vOuW1JbPQ40J114z7rUN0bsoMF8xz2urF4aAlbrY8z44/sV
 ln3/oAy2RPukn9WICereVEVlpaie6ghkUmcQT2cmekkp5KgCpApNqh/c0GjcpH1IeaoU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0pNvw0AJcxHmfaL+wnn2XxzmONSyI3eLqIqKcEGrFlw=; b=NSKcZd7Ma0SY3+YUwpggsQDPWF
 tzAbHs5w99YQ4Qqois3teXbQMEKd2vSVCKFlL6agvFdFFfOdvdK0O6QzVbCSynZEGTOA7xuM6PYOk
 psIDxhstQqkw6LVbeM6n/aMkLEzujgJfbqS9SZSCCndpQUQaQXh3k9ybBwB3rBZDUE14=;
Received: from [90.155.92.199] (helo=desiato.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1VXu-00043V-Io
 for openipmi-developer@lists.sourceforge.net; Wed, 15 Jun 2022 16:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=0pNvw0AJcxHmfaL+wnn2XxzmONSyI3eLqIqKcEGrFlw=; b=WcWMflq4H7j2sfihg3TcYEVX0P
 Uq635gc6KnkYqaXJG5B40FHlqXz2Npw+ty5+wnBhzUajcJZzyo8kZ4B0FxoQOLWX6gwZaA8r27CKG
 Zf9fm7vsenwBF05ChbGAHVfadgmjpALv+hcB+vymHa4b3VBcdCoZo3F7UlE78nFYinH9zvbsXqDkp
 5iub0T/QhUYuCZmbweUh/h/7MTrdMw2IXMpxX5a0tyLXGa0r3rct/jLuwbq6+NA0epnqqkJC+Pr60
 6tyJHfW04fLihHOQHr6yn9D7nBHpYHlQFpc4gjP++oQ9AtwDwOjju4Ywqg3SF/Bb8CF+U36YJc7cu
 puLPU5PQ==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1o1VX9-008ALV-3I; Wed, 15 Jun 2022 16:06:19 +0000
Message-ID: <8b7841a9-9313-b1d5-8a80-a65cfa8e7b4d@infradead.org>
Date: Wed, 15 Jun 2022 09:06:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Quan Nguyen <quan@os.amperecomputing.com>, Corey Minyard
 <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
References: <20220615090259.1121405-1-quan@os.amperecomputing.com>
 <20220615090259.1121405-2-quan@os.amperecomputing.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20220615090259.1121405-2-quan@os.amperecomputing.com>
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/15/22 02:02,
 Quan Nguyen wrote: > diff --git a/drivers/char/ipmi/Kconfig
 b/drivers/char/ipmi/Kconfig > index b061e6b513ed..18a89093d64e 100644 > ---
 a/drivers/char/ipmi/Kconfig > +++ b/drivers/ch [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [90.155.92.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o1VXu-00043V-Io
Subject: Re: [Openipmi-developer] [PATCH v8 1/3] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 6/15/22 02:02, Quan Nguyen wrote:
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> index b061e6b513ed..18a89093d64e 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -169,6 +169,17 @@ config ASPEED_BT_IPMI_BMC
>  	  found on Aspeed SOCs (AST2400 and AST2500). The driver
>  	  implements the BMC side of the BT interface.
>  
> +config SSIF_IPMI_BMC
> +	tristate "SSIF IPMI BMC driver"
> +	select I2C

No. That should be:
	depends on I2C

We don't select an entire subsystem just to satisfy one driver.

> +	select I2C_SLAVE
> +	help
> +	  This enables the IPMI SMBus system interface (SSIF) at the
> +	  management (BMC) side.
> +
> +	  The driver implements the BMC side of the SMBus system
> +	  interface (SSIF).
> +

Thanks.
-- 
~Randy


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

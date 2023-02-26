Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E9F6A35AE
	for <lists+openipmi-developer@lfdr.de>; Mon, 27 Feb 2023 00:49:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pWQm2-0002Kp-Fc;
	Sun, 26 Feb 2023 23:49:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1pWQlz-0002Ki-TV
 for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Feb 2023 23:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9PejPGTxL25SJB36o+PnBSWRHGUsacmQ1zn1iBthv50=; b=cNAruQzge6vN2Hsr3iEcfjI9bZ
 WX6XcmmkKPHcCri22h1RE9R3YMj4eHcHNd9N7hb4GZLGsF1KCD99bZXt3Tj6lcfyBsPUvODFtG3/C
 VSH+DnYEbPxBkEqy9urAShtlP5LUxj8pKqA8U7Fop0ntcOzgCGbvzJIf7CInnrYCkOy8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9PejPGTxL25SJB36o+PnBSWRHGUsacmQ1zn1iBthv50=; b=JnXnJg52/t4Y1THw71wlqtwcCS
 iOyOOPJ57ue6l7HT+Yp85LDm8N9MMCNkPS6b7znaED9Jv2w64pzXhBPMmDKMQRPFhUoibf7iFEH+v
 ZuNNe4gcAAhnQWPWYbT5tuI00PHaH0NHWQcHuhSnuhc4BTEwgZ8yn049eeYa2X0VOCTE=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pWQlw-0005c7-6H for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Feb 2023 23:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=9PejPGTxL25SJB36o+PnBSWRHGUsacmQ1zn1iBthv50=; b=Xcc8YhLeAEHdmGwUj6CbVT4PU3
 1sQtfKK2JApbNilAsDLUWQvhueBdGvVBEGLaFFYs6/F6EjDZk/IWB5lB2ChZRKmmBSbM+M4evUqBN
 FjQJh6FBswFW9nj6FPGDWcJFyjwEaEX1/thgbpch0r97l523IiYypAt+ZD379ofurD3aFbTcpQVdg
 ErAnBOtHrKV6wbfDKR6isL61SRJhb5fe7C28MI5qLMkyhhTXZYDoJZJuyPso4PjspSGn65Vby0MfS
 gf6JUHqCxyASswJ5aLyfOGLKGkg9BPkOvYIUr87yQ4xEfDxhAsdMD5zqNt5govwxAPmiy3vl4PwRr
 Ft+iNiPQ==;
Received: from [2601:1c2:980:9ec0::df2f]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pWQlj-0081vD-MH; Sun, 26 Feb 2023 23:49:28 +0000
Message-ID: <daa6520c-a009-a68e-42c8-6f690b02a7cd@infradead.org>
Date: Sun, 26 Feb 2023 15:49:27 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: minyard@acm.org
References: <20230226053953.4681-1-rdunlap@infradead.org>
 <20230226053953.4681-2-rdunlap@infradead.org> <Y/vkOCLCeubl6B34@minyard.net>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <Y/vkOCLCeubl6B34@minyard.net>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/26/23 14:59, Corey Minyard wrote: > On Sat, Feb 25, 2023
 at 09:39:46PM -0800, Randy Dunlap wrote: >> REGMAP is a hidden (not user
 visible) symbol. Users cannot set it >> directly thru "make *conf [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pWQlw-0005c7-6H
Subject: Re: [Openipmi-developer] [PATCH 1/8] ipmi: ASPEED_BT_IPMI_BMC:
 select REGMAP_MMIO instead of depending on it
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 2/26/23 14:59, Corey Minyard wrote:
> On Sat, Feb 25, 2023 at 09:39:46PM -0800, Randy Dunlap wrote:
>> REGMAP is a hidden (not user visible) symbol. Users cannot set it
>> directly thru "make *config", so drivers should select it instead of
>> depending on it if they need it.
>>
>> Consistently using "select" or "depends on" can also help reduce
>> Kconfig circular dependency issues.
>>
>> Therefore, change the use of "depends on REGMAP_MMIO" to
>> "select REGMAP_MMIO", which will also set REGMAP.
> 
> This seems reasonable.  I can take it into my tree, or..

Just take it, please. I expect that each subsystem maintainer
will take their respective patches.

> Acked-by: Corey Minyard <cminyard@mvista.com>
> 
>>
>> Fixes: eb994594bc22 ("ipmi: bt-bmc: Use a regmap for register access")
>> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
>> Cc: Andrew Jeffery <andrew@aj.id.au>
>> Cc: Corey Minyard <minyard@acm.org>
>> Cc: openipmi-developer@lists.sourceforge.net
>> Cc: Arnd Bergmann <arnd@arndb.de>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> ---
>>  drivers/char/ipmi/Kconfig |    3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff -- a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
>> --- a/drivers/char/ipmi/Kconfig
>> +++ b/drivers/char/ipmi/Kconfig
>> @@ -162,7 +162,8 @@ config IPMI_KCS_BMC_SERIO
>>  
>>  config ASPEED_BT_IPMI_BMC
>>  	depends on ARCH_ASPEED || COMPILE_TEST
>> -	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
>> +	depends on MFD_SYSCON
>> +	select REGMAP_MMIO
>>  	tristate "BT IPMI bmc driver"
>>  	help
>>  	  Provides a driver for the BT (Block Transfer) IPMI interface

-- 
~Randy


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

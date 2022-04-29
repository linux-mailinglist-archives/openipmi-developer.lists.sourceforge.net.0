Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D42351528A
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 19:44:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkUex-0000vV-Kf; Fri, 29 Apr 2022 17:44:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <a.fatoum@pengutronix.de>) id 1nkRhE-0005s6-Hp
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:34:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rne+9McIt65AOYF7lTGV2hdNpCYqa4i4dc5qeh26OMw=; b=BXU1lHWgvzYWuy2ZpulNjpgupJ
 NmfoFBEYBBc+G4UgvP1ZcYAIj2EZcga2Nu2FTMdPBLhi0lXNInuVEIsvmaTaDdT4L1KNXOTpQ0npu
 VK/f8nY6d/WxE2FpRvoboQqYxciFz+Az9zT2SVaipEVEX4bQEnLz21WQP54QmdB/Pg/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rne+9McIt65AOYF7lTGV2hdNpCYqa4i4dc5qeh26OMw=; b=HLXKPIAfDchugGMDRge7gGgEsD
 3/smtRcSMmkq+ntbLzC4oyK/V0RzGCfsqEt9ua25IE97BjkpASW85uiyXwVBRD2pjSLii0FZFI4sU
 yHbzd9J20PQVyOVQm55NxFcLO/+aV0jdFvn9zXbQCrqu7br2NetJlIf1dubDcWVrvOZE=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkRhD-00Dt98-G1
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:34:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nkRgt-00042Z-F1; Fri, 29 Apr 2022 16:33:51 +0200
Message-ID: <ff7605de-fe12-3bbf-cce9-aec18be9d54e@pengutronix.de>
Date: Fri, 29 Apr 2022 16:33:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Niklas Schnelle <schnelle@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
 <20220429135108.2781579-7-schnelle@linux.ibm.com>
 <07c39877d9e940a96be41e21e22fe45dbb73d949.camel@linux.ibm.com>
Content-Language: en-US
In-Reply-To: <07c39877d9e940a96be41e21e22fe45dbb73d949.camel@linux.ibm.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Niklas, On 29.04.22 16:23, Niklas Schnelle wrote: >>
 Hello Niklas, >> >> On 29.04.22 15:50, Niklas Schnelle wrote: >>> In a future
 patch HAS_IOPORT=n will result in inb()/outb() and friends >>> not being
 decl [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkRhD-00Dt98-G1
X-Mailman-Approved-At: Fri, 29 Apr 2022 17:44:02 +0000
Subject: Re: [Openipmi-developer] [RFC v2 04/39] char: impi,
 tpm: depend on HAS_IOPORT
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 "open list:TPM DEVICE DRIVER" <linux-integrity@vger.kernel.org>,
 Peter Huewe <peterhuewe@gmx.de>,
 "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello Niklas,

On 29.04.22 16:23, Niklas Schnelle wrote:
>> Hello Niklas,
>>
>> On 29.04.22 15:50, Niklas Schnelle wrote:
>>> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
>>> not being declared. We thus need to add this dependency and ifdef
>>> sections of code using inb()/outb() as alternative access methods.
>>>
>>> Co-developed-by: Arnd Bergmann <arnd@kernel.org>
>>> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
>>
>> [snip]
>>
>>> diff --git a/drivers/char/tpm/tpm_infineon.c b/drivers/char/tpm/tpm_infineon.c
>>> index 9c924a1440a9..2d2ae37153ba 100644
>>> --- a/drivers/char/tpm/tpm_infineon.c
>>> +++ b/drivers/char/tpm/tpm_infineon.c
>>> @@ -51,34 +51,40 @@ static struct tpm_inf_dev tpm_dev;
>>>  
>>>  static inline void tpm_data_out(unsigned char data, unsigned char offset)
>>>  {
>>> +#ifdef CONFIG_HAS_IOPORT
>>>       if (tpm_dev.iotype == TPM_INF_IO_PORT)
>>>               outb(data, tpm_dev.data_regs + offset);
>>>       else
>>> +#endif
>>
>> This looks ugly. Can't you declare inb/outb anyway and skip the definition,
>> so you can use IS_ENABLED() here instead?
>>
>> You can mark the declarations with __compiletime_error("some message"), so
>> if an IS_ENABLED() reference is not removed at compile time, you get some
>> readable error message instead of a link error.
>>
>> Cheers,
>> Ahmad
> 
> I didn't know about __compiletime_error() that certainly sounds
> interesting even when using a normal #ifdef.
> 
> That said either with the function not being declared or this
> __compiletime_error() mechanism I would think that using IS_ENABLED()
> relies on compiler optimizations not to compile in the missing/error
> function call, right? I'm not sure if that is something we should do.

Yes, it assumes your compiler is able to discard the body of an if (0),
which we already assume, otherwise it wouldn't make sense for any existing
code to use __compiletime_error().

To me this sounds much cleaner than #ifdefs in the midst of functions,
which are a detriment to maintainability.

Cheers,
Ahmad




> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

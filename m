Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D769D2278C7
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Jul 2020 08:18:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jxlbL-0000CO-Di; Tue, 21 Jul 2020 06:18:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangxiongfeng2@huawei.com>) id 1jxlbK-0000CH-BF
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 06:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k72+sPERZ6swjjGWELY1PUSa54/Fs5E+CfkoR0k6Dqs=; b=Z6XWOSpqdSrNczgZ/3xC+Kp+3E
 DyJT137WNM5/V45nHfjAPeC90t/MUDnzbvagru5FBLZLdJv+34cj8GwIa4WlOYIaIHWelL6MMD3eb
 l7oe2Xly3tWPjqFtpR1pXSF4yKwDeqmOu3+92ARGew8fyZWelDMvdXfYRqn06+6Q/Ax8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k72+sPERZ6swjjGWELY1PUSa54/Fs5E+CfkoR0k6Dqs=; b=P6O/mrNyHTV7hrwuXAtjSt1EHT
 qBx3Jt9spzoKsizq/SDQrueb2j8zY+h65jp05Ji2VPdsV0zauc5kcyPa3TO3rRM/XQ28035FvvgPV
 jRj79f8MowoKTRcBngk4aaYPtArdtrft8/OrIiiEzx3IOZb0u1+xyWzlV65e70+7Ng34=;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxlbI-00BgNS-My
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 06:18:06 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CD319428CB13F7977094;
 Tue, 21 Jul 2020 14:17:50 +0800 (CST)
Received: from [127.0.0.1] (10.174.178.16) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Tue, 21 Jul 2020
 14:17:40 +0800
To: Joe Perches <joe@perches.com>, <minyard@acm.org>
References: <1595210605-27888-1-git-send-email-wangxiongfeng2@huawei.com>
 <20200720195234.GC2952@minyard.net>
 <908fcbf2-efbb-b3f4-0666-2da79fbe99c4@huawei.com>
 <b38a439b2bdd1122805aa182da9a1802e673f53e.camel@perches.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <70f4a8b9-1410-a32d-dfaa-4cb5d3cade10@huawei.com>
Date: Tue, 21 Jul 2020 14:17:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b38a439b2bdd1122805aa182da9a1802e673f53e.camel@perches.com>
X-Originating-IP: [10.174.178.16]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxlbI-00BgNS-My
Subject: Re: [Openipmi-developer] [PATCH] ipmi/watchdog: add missing
 newlines when printing parameters by sysfs
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de, guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 2020/7/21 10:00, Joe Perches wrote:
> On Tue, 2020-07-21 at 09:20 +0800, Xiongfeng Wang wrote:
>> On 2020/7/21 3:52, Corey Minyard wrote:
>>> On Mon, Jul 20, 2020 at 10:03:25AM +0800, Xiongfeng Wang wrote:
>>>> When I cat some ipmi_watchdog parameters by sysfs, it displays as
>>>> follows. It's better to add a newline for easy reading.
> []
>>>> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> []
>>>> @@ -232,12 +232,16 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
>>>>  static int get_param_str(char *buffer, const struct kernel_param *kp)
>>>>  {
>>>>  	action_fn fn = (action_fn) kp->arg;
>>>> -	int       rv;
>>>> +	int rv, len;
>>>>  
>>>>  	rv = fn(NULL, buffer);
>>>>  	if (rv)
>>>>  		return rv;
>>>> -	return strlen(buffer);
>>>> +
>>>> +	len = strlen(buffer);
>>>> +	len += sprintf(buffer + len, "\n");
>>>
>>> sprintf is kind of overkill to stick a \n on the end of a line.  How
>>> about:
>>>
>>> 	buffer[len++] = '\n';
>>>
>>> Since you are returning the length, you shouldn't need to nil terminate
>>> the string.
> 
> You never quite know for sure so I suggest making
> the string null terminated just in case.
> 
> i.e.:
> 
> 	buffer[len++] = '\n';
> 	buffer[len] = 0;
> 

Thanks for your advice. I will change it in the next version.

Thanks,
Xiongfeng

> 
> 
> .
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

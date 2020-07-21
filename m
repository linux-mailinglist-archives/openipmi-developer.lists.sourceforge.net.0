Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B85AC227476
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Jul 2020 03:20:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jxgxa-0003Ei-NF; Tue, 21 Jul 2020 01:20:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangxiongfeng2@huawei.com>) id 1jxgxZ-0003EV-3r
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 01:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CvMtbAjoXZgcnSs5DoTPTjWd7j236BpIH6VjnAoGZ7E=; b=eX1oQrVvNG92s9YgUSpnRLMst3
 AiisgD6d97J8ew94u6baOzDQ9DbE2RnhO6Ed2JEhL88dysjC2sI0uuFWhcYrDSLAotbhxbzfUdJd5
 RPFIE/2JICA0D6RxbyTLif5XY1c09mxzB/EBYXjRw/5PwvM2M0uDFHnUqhW2eGm4hMOY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CvMtbAjoXZgcnSs5DoTPTjWd7j236BpIH6VjnAoGZ7E=; b=A4LQyjWxRSj0ePV2uOgUosNtBO
 TjmnQ4YR8FBULwcWJiYpru+s1zWXArztiB/uIwKicW/7IYQbjpvWY893RT0v2bfs1tRIIsOl7bWIx
 e67a1RN/clHq0f2UGrun61SsUtgwWMLtebq3DBtPI20BHjI8ISfxfVV1iwUUw5YaI8wg=;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxgxW-00ET7v-Uq
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 01:20:45 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CDA83C04CAAF79530EFA;
 Tue, 21 Jul 2020 09:20:27 +0800 (CST)
Received: from [127.0.0.1] (10.174.178.16) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Tue, 21 Jul 2020
 09:20:17 +0800
To: <minyard@acm.org>
References: <1595210605-27888-1-git-send-email-wangxiongfeng2@huawei.com>
 <20200720195234.GC2952@minyard.net>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <908fcbf2-efbb-b3f4-0666-2da79fbe99c4@huawei.com>
Date: Tue, 21 Jul 2020 09:20:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200720195234.GC2952@minyard.net>
X-Originating-IP: [10.174.178.16]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1jxgxW-00ET7v-Uq
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

Hi Corey,

Thanks for your reply !

On 2020/7/21 3:52, Corey Minyard wrote:
> On Mon, Jul 20, 2020 at 10:03:25AM +0800, Xiongfeng Wang wrote:
>> When I cat some ipmi_watchdog parameters by sysfs, it displays as
>> follows. It's better to add a newline for easy reading.
>>
>> root@(none):/# cat /sys/module/ipmi_watchdog/parameters/action
>> resetroot@(none):/# cat /sys/module/ipmi_watchdog/parameters/preaction
>> pre_noneroot@(none):/# cat /sys/module/ipmi_watchdog/parameters/preop
>> preop_noneroot@(none):/#
> 
> Yeah, that's not consistent with other things displayed in the kernel.
> 
>>
>> Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
>> ---
>>  drivers/char/ipmi/ipmi_watchdog.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
>> index 55986e1..3e05a1d 100644
>> --- a/drivers/char/ipmi/ipmi_watchdog.c
>> +++ b/drivers/char/ipmi/ipmi_watchdog.c
>> @@ -232,12 +232,16 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
>>  static int get_param_str(char *buffer, const struct kernel_param *kp)
>>  {
>>  	action_fn fn = (action_fn) kp->arg;
>> -	int       rv;
>> +	int rv, len;
>>  
>>  	rv = fn(NULL, buffer);
>>  	if (rv)
>>  		return rv;
>> -	return strlen(buffer);
>> +
>> +	len = strlen(buffer);
>> +	len += sprintf(buffer + len, "\n");
> 
> sprintf is kind of overkill to stick a \n on the end of a line.  How
> about:
> 
> 	buffer[len++] = '\n';
> 
> Since you are returning the length, you shouldn't need to nil terminate
> the string.

Thanks for your advice. I will change it in the next version.

> 
> An unrelated question: Are you using any of the special functions of the
> IPMI watchdog, like the pretimeout?

I am not using any special functions of the IPMI watchdog. It's just that I cat
the parameters below 'ipmi_watchdog' and find we can add a newline here.

Thanks,
Xiongfeng

> 
> -corey
> 
>> +
>> +	return len;
>>  }
>>  
>>  
>> -- 
>> 1.7.12.4
>>
> 
> .
> 



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

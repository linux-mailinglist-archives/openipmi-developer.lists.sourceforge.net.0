Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E89F64E9B4E
	for <lists+openipmi-developer@lfdr.de>; Mon, 28 Mar 2022 17:46:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nYrZf-0000wY-Jy; Mon, 28 Mar 2022 15:46:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@qq.com>) id 1nYr9R-0004vx-Pl
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Mar 2022 15:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rl+jHvCKPWpE6h+zOi20QX/K8dLZP6IAdrpsulCmybU=; b=S3ZFpJ049nMFDYr6iHcXBwMIyy
 lhLkggOz/fUVWg/l8+FSrI4mOuUBznZ9JFfbFK203vbDTYbpMa+tyCEKN/mGUHhENHeecv9VfQ6t/
 7SK0JgoqQW0DnOD5RzPTfwKxLl0wdlfo30UQR/b/lRGHCP++GMJywjQ7GeGKx/thhesM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rl+jHvCKPWpE6h+zOi20QX/K8dLZP6IAdrpsulCmybU=; b=YGLPVQCovUI6f1R+sfHDA1Yw9g
 eUA+W3jp+JUbd4hAafht+U9605x1vh1LcI1pe0kqK32A4bhzknHS0oH3B8ZGgxXhk1usyWM0A8V/X
 E/o/FopdHDQFNl/0a6VVIPh9+ARXPsKEnckrq6/rK0iQTqM+Rw6Jsl3PD4QECj+b5t9M=;
Received: from [203.205.251.36] (helo=out203-205-251-36.mail.qq.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYrHA-0008GS-TM
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Mar 2022 15:27:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1648481228; bh=rl+jHvCKPWpE6h+zOi20QX/K8dLZP6IAdrpsulCmybU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=MZL+guxGuNx38KDuVafK0fI3/fObQqyqiAi3EGAVO5eF/P3otkeg4APDFNRutthPA
 l0Zsb7VdysVNzPQPFRVWzuGEdou//Ujk+t8L/UITJV/YY9i8HLEFZe+6x5P94dSwAT
 G3dFQ14C1gcXeZAq23wlTLcEWSe1QfvenVf93TNk=
Received: from [192.168.31.6] ([120.245.132.52])
 by newxmesmtplogicsvrszb6.qq.com (NewEsmtp) with SMTP
 id 6C6B925A; Mon, 28 Mar 2022 23:27:06 +0800
X-QQ-mid: xmsmtpt1648481226tqgpbcr35
Message-ID: <tencent_071EACFAEE3F0CFA14A674C4603E39026F09@qq.com>
X-QQ-XMAILINFO: OMIjnSQFC3bt7j4Xv30Ml+TdzqBG3Q2nsvAe40dzC3awt6uBWv3Bk3Uy6R4Qvg
 f5T236LIEUt0jcMdf0sOgxStRHsb85APbzcbqRvqg/RZvXQABCg9OhQLxT2EEb56dgE7bHJ+D/HB
 aWf8XwazGMjNMTJA60ljyQEXKZmhJvv1SwHCGX9+KauA5jYNE+gXsI99DbfXjASdZng+HBp6RPls
 Tr3SMb9j6vnjOdaAM/eAT5PZlRecM6FdUqAnKMucZ4ybFqW5alXaBTK0hd66dLWV/JjRWlwzuMyx
 OeoFhco/2lg4IoK0el868nxN0DwqTs/TF2wTl6V4k9ZiWAfzcdEHjj7w94HWsrpUCisKQ0bVSpjU
 DpZa8vNPrScUSONTTM0CzX3bCliUnHDAE8Arcn1ZsJSgbWMwpcD2WsuwcGp/K4n8bTZGLkPZMmAC
 64TtZocSLfa31fsJ5lGw3yQhph8lqTqlXUhRQ3u9aa5O1qw1ueR3GbalV6KFUM5OBwtVCgA8mPLU
 sfGL/ftiqHPNbrNh3dglyW6Q2todh3589DmlX+xGa/hl2QB+fYC7f3NwVpC87lExvox9LB1Kz5uk
 6OzyZakwkD1tyaQR4fAg3ZO+2ctoTwXOn8uVUAVZpaRvlH1vzXW2K16mQVJ4PHaR9Mpy1C4zn27j
 tmgIG46SayWYTB/7Jp3dnzFVY/K57Qfp/0vqa+XBO4lceK3pJ7TBRzLXXq4WsAGS9uMpThgbTPQF
 oPYtOsNxvvLD6bRnFMlKDUN6c765JNcTnAC3jsvIif9IoGVsDGGs7u6ugo1KTR20urvPi5J2rGZ/
 gFxkUbOOiZwiw/fBYaQNv0fQkd9Ifa1iyrstFqu563cHJKI30+x5eb9yMWaEZC7UeP0oT1yhcIPE
 oMO984MYtGL4qOhuUMscyAbfIef1JkTmOVO2IsA/8GHadtdyPXV8LjbaxJ+KOgkzwZPyUFwyvb
X-OQ-MSGID: <fe327e43-60cf-6570-f129-338c8dfcd1e7@qq.com>
Date: Mon, 28 Mar 2022 23:27:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: minyard@acm.org, Chen Guanqiao <chen.chenchacha@foxmail.com>
References: <tencent_BD6D4CB98B6D7FAA04F63D28F6457F10F40A@qq.com>
 <20220328013842.GN3457@minyard.net>
In-Reply-To: <20220328013842.GN3457@minyard.net>
X-Spam-Score: 4.9 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/3/28 09:38, Corey Minyard wrote: > On Mon, Mar 28,
 2022 at 12:47:41AM +0800, Chen Guanqiao wrote: >> At present, a scenario
 has been found that there are too many ipmi messages in a >> short p [...]
 Content analysis details:   (4.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.251.36 listed in list.dnswl.org]
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [203.205.251.36 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]qq.com]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1) -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1nYrHA-0008GS-TM
X-Mailman-Approved-At: Mon, 28 Mar 2022 15:46:28 +0000
Subject: Re: [Openipmi-developer] [PATCH 0/3] ipmi: msghandler: check the
 users and msgs causing the system to block
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
From: chenchacha via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: chenchacha <chen.chenchacha@qq.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 2022/3/28 09:38, Corey Minyard wrote:
> On Mon, Mar 28, 2022 at 12:47:41AM +0800, Chen Guanqiao wrote:
>> At present, a scenario has been found that there are too many ipmi messages in a
>> short period of time, and a large number of users and messages are blocked in
>> the ipmi modules, resulting in a large amount of system memory being occupied by
>> ipmi, and ipmi communication always fails.
>>
>> Frequent calls ipmi and failure of hardware communication will cause this
>> exception. And ipmi has no way to detect and perceive this problem, therefore
>> it is impossible to located and perceived online.
> 
> Hmm.  So you have an application that just keeps sending IPMI messages
> and not waiting for responses?  I think the first order of business
> would be to fix your applications to not do that.

Hi, Corey

Actually, The patch just provides a way to located and perceived this 
problem online: display number of users and messages. How to solve the 
problem gracefully, I haven't fully thought about it. To cleanup msgs 
queue is one of method for administrator.

Because the memory consumption of the module is counted in the 
consumption of the kernel, most of the time, the administrator does not 
know the state of ipmi, so it is impossible to guess where the memory goes.

Only when they tried to execute 'rmmod ipmi' did they find out: oh ,the 
memory is in ipmi.

> The ipmi driver will eventually clean things out, but the timeouts are
> pretty long.  In the 5 second range per message.
> 
> However, as you say, there are no limits on users or messages, and that
> is perhaps a problem.  I mean, only root can send IPMI message, and root
> can do a lot more harm than that.  But it's probably bad in principle.
> Nobody has ever reported this problem before.
If the bmc communication of the device is abnormal, for example, the 
hardware is blocked, and the monitoring program repeatedly checks the bmc.

The scenario is often seen in automated monitoring tool.

Of course, this problem is a bit rare, one hundred out of ten thousand 
machines, 1% probability.

> Anyway, a better solution for the kernel side of things, I think, would
> be to add limits on the number of users and the number of messages per
> user.  That's more inline with what other kernel things do.  I know of
> nothing else in the kernel that does what you are proposing.

The precondition for add limits, is that people known that ipmi has too 
many users and messages cause problems, this patch is to let 
administrator known that.

In addition, different machines have different limit, My server my block 
700,000 messages and it's fine, and my NAS pc went to OOM when it 
probably blocked for 10,000 messages. So, to limit the number of users 
and messages, can wait until we have accumulated some online experience?

> 
> Does that make sense?
> 
> -corey
> 

thanks
--

Chen Guanqiao
>>
>> This patch provides a method to view the current number of users and messages in
>> ipmi, and introduce a simple interface to clear the message queue.
>>
>> Chen Guanqiao (3):
>>    ipmi: Get the number of user through sysfs
>>    ipmi: Get the number of message through sysfs
>>    ipmi: add a interface to clean message queue in sysfs
>>
>>   drivers/char/ipmi/ipmi_msghandler.c | 159 ++++++++++++++++++++++++++++
>>   1 file changed, 159 insertions(+)
>>
>> -- 
>> 2.25.1
>>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

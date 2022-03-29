Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 114654EB178
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 18:10:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZEQd-0003td-6i; Tue, 29 Mar 2022 16:10:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nZEQb-0003tX-N3
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:10:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mE9DRDsHIsIHAbKbJFK2/CHjDpNdpunTcLE/Dg65eAI=; b=GnFWpYzdcw4g1MTUiCxeZ9Vuqn
 VLCqkKVQke56WMDLbDFBFe5CK0HNbarmEiuVtHvsps39eSAV6LJwaGR4JyAC6REi8T3Ki+YlRNVgh
 9edNr474fOIatvq1puCGf4oVYxjFzEDRUyFiLqvCvSS7NotuSm+Vo06T8VMcDk+mwqos=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mE9DRDsHIsIHAbKbJFK2/CHjDpNdpunTcLE/Dg65eAI=; b=EywH5tROOr34oed5rldVV270XK
 2vgYTx9tPOiPO4oIbVURd0LIki0bd87SuQDOpeN9A+GrMU9Fb6hk5zFtV8nTD2zbO0Ms192MqUO25
 QjWIsY4CukMtvD8q9puZO4B35l4QlSrDk0YJKZGNQrEU2PWKCMEnZlOqb83ApM3jurAo=;
Received: from out162-62-57-210.mail.qq.com ([162.62.57.210])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZEQR-00FxlE-6r
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648570210;
 bh=mE9DRDsHIsIHAbKbJFK2/CHjDpNdpunTcLE/Dg65eAI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=Dvu/zZXYxlw+7IC7fC0iLm3ZvARxX7CzLK6ef6jjY2f3IAZfB5ZLL2hblPoO5RND/
 ZYGn2SmomZNzlrEdvCjIlJKB8KrSRjRjepuvOGxguDEQZgipSKniIYkd7ukpAzlSHJ
 uSkiM4ol6edA557OquaKshsZG3ugr+t6AdMeo2jI=
Received: from [192.168.31.6] ([120.245.132.52])
 by newxmesmtplogicsvrszc11.qq.com (NewEsmtp) with SMTP
 id 28897A01; Wed, 30 Mar 2022 00:10:08 +0800
X-QQ-mid: xmsmtpt1648570208tm8np4p8u
Message-ID: <tencent_39A03E44FA72A77EC50A3F8F02C71F0EFA09@qq.com>
X-QQ-XMAILINFO: OYji31yNgomxdzawO0x/piNS6YFdtMMQ9FSm2rMyK0ZKdKsF7BqYhCbcqbwoqe
 zIDca7AZHfKpDI2L+27tL+KnvLyR9x6RzBCEIZ9B4BkS4ik46njjwKNB77HhZuCnWbCkUAC3kfuU
 5zRur5hZB4BU8eSlXIT8XrWbuaDw1HXA1prNkvtjhVT8I0MRkRKzlePtdeMb61HC5mLlUWhzzp2+
 EZkazy60AjWGEKJ6K3bmuiAOs1AA0XaMs2g7YgdimbIuvuKvybhQn6qXSpUQ+RleaQJFoqft692N
 h6mAAVIpGEAWyAej6EJKSqzt+MrWubXLWaS9F5j4S82FSY89gxKFGZLYstjUHz1zI6hglcNRE73p
 22aT0X9P1QSwB4y90BxwIjWZU8Eq8otD7wr0cHJfGJU0PGOZbwT1S8PYhhnOEvVB2Z2VnQ7DH0bk
 7ClNIi+Tcxk2nR/LJ0LZLRRQKWFjSSvcV441pEkF/nLnetAXA2f8Ex9ESiQHnZjhZMaHzWNEQbMB
 dCO8+6/Pw4u0X9FRqtX+2ol8DHvX/jReSSGr7dBAtICO5hna3OmGuflNrdsAuGxNMubnkhSJ0Rww
 Jai9IVA8zbE/iBNJV1vOxcVXjN7mXr8kvaMCP9ZuFHGRyvetQXqbMimDKIhZ9O6kfMgURpoRlc5X
 H+kfaggx7eOUabExe3RmT0R3reL1c3UyZ3DjeHihkTwMX9OlfKqr91nFgU4A3X3GUge10khC+jco
 wxZPSH8Xs1JqeJV01u4HSWKcyONaFG7XsEc93HDPOn7qTBvsvufxpDRhhMOZ/ryQ/Cvh9BYsm8yI
 2pGoCzQDrI8/dBhoA5H6tqlEQ4IwsMm2zwpWM829u2kc5RaB8/AwpMB9I73dP3Gs+psCKeCE7sB5
 yYzEw4mTBCK4JAlwLVrQs=
X-OQ-MSGID: <0c20c29b-acc5-3bfa-4947-b7629c2a56ea@foxmail.com>
Date: Wed, 30 Mar 2022 00:10:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: minyard@acm.org
References: <tencent_BD6D4CB98B6D7FAA04F63D28F6457F10F40A@qq.com>
 <20220328013842.GN3457@minyard.net>
 <tencent_071EACFAEE3F0CFA14A674C4603E39026F09@qq.com>
 <20220328154545.GP3457@minyard.net>
From: chenchacha <chen.chenchacha@foxmail.com>
In-Reply-To: <20220328154545.GP3457@minyard.net>
X-Spam-Score: 5.4 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/3/28 23:45, Corey Minyard wrote: > On Mon, Mar 28,
 2022 at 11:27:06PM +0800, chenchacha wrote: >> >>> Anyway, a better solution
 for the kernel side of things, I think, would >>> be to add limi [...] 
 Content analysis details:   (5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [162.62.57.210 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1) -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1nZEQR-00FxlE-6r
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 2022/3/28 23:45, Corey Minyard wrote:
> On Mon, Mar 28, 2022 at 11:27:06PM +0800, chenchacha wrote:
>>
>>> Anyway, a better solution for the kernel side of things, I think, would
>>> be to add limits on the number of users and the number of messages per
>>> user.  That's more inline with what other kernel things do.  I know of
>>> nothing else in the kernel that does what you are proposing.
>>
>> The precondition for add limits, is that people known that ipmi has too many
>> users and messages cause problems, this patch is to let administrator known
>> that.
>>
>> In addition, different machines have different limit, My server my block
>> 700,000 messages and it's fine, and my NAS pc went to OOM when it probably
>> blocked for 10,000 messages. So, to limit the number of users and messages,
>> can wait until we have accumulated some online experience?
> 
> I don't mean a limit on the total number of messages, but a limit on the
> total number of oustanding messages, and a limit on the total number of
> users.  No user should have more than a handful of oustanding message,
> and limiting the number of users to 20 or 30 should be more than enough
> for any system.
> 
> Having those limits in place would probably help you trace down your
> problem, as you would hit the limits and it should report it at the
> source of the problem.
> 
> -corey

Hi Corey:

According to your suggestion, I have don some tests. After adding 
limits, event if the bmc hardware fails, the ipmi will not occupy a 
large memory in system.

The modifications are in the next version of the patch.

Thanks
--
Chen Guanqiao


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

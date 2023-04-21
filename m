Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C22B6EA18B
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 Apr 2023 04:16:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ppgJg-0001dL-AU;
	Fri, 21 Apr 2023 02:16:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@aj.id.au>) id 1ppgJd-0001dD-2c
 for openipmi-developer@lists.sourceforge.net;
 Fri, 21 Apr 2023 02:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xUAZyNdG+JjO3VI3lilfJ4OkHzwV6FlCSaYK+jkyBLU=; b=YiYe6UdjWfssOfOv+4u/tX6LbQ
 aSOWipQ5OrnuctlR3wVR0JoQbmCjiFzD7qarXb1935CTdMGRWackb/V/DbxU1nF2YOPOjPXJBlZ01
 4SrcyeMVqhh9iseCo/fv4Hx3AnJgFLgGomSfK4gjEfDMO5R7SKnQ7eLaD8KNgtLk5iD4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xUAZyNdG+JjO3VI3lilfJ4OkHzwV6FlCSaYK+jkyBLU=; b=IFMDo5wcZh9LaqTnnWjUGDZwur
 XkWmgoJHHBjfnUdomHxqbdctbp5DwQ+oEnqGU3qQzFcvlQEN5s73Py70IoS+PvSSKVMdOrZzTXDvP
 B/0E+fXZN1GuFFS1riWeSA3dXjs2Up1O81xR3LyfXNLCLkA6SotmkvL8eHWQOccOXXlU=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ppgJW-00E8gQ-S0 for openipmi-developer@lists.sourceforge.net;
 Fri, 21 Apr 2023 02:16:01 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 52B635C01C1;
 Thu, 20 Apr 2023 21:58:27 -0400 (EDT)
Received: from imap50 ([10.202.2.100])
 by compute6.internal (MEProxy); Thu, 20 Apr 2023 21:58:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1682042307; x=1682128707; bh=xU
 AZyNdG+JjO3VI3lilfJ4OkHzwV6FlCSaYK+jkyBLU=; b=SFiUs2RUqjEY+paB1V
 c9YuPX4X0hGuVuxgfWxdUEnxr712U5djrjYQUQRI5lPalZd8ZMbtH8enfGk7vl2W
 4ypuF2nylPWI3Z+arGzsQXCoMwX5EX8h7hluGeFGW0A1Zw+32atV6cBrQ6V3+MXH
 NL6PPTPx7QPtuBP+nTGMsHFWwKRsjLs4MFDdn+m6ws/tTn0kVYAVoPMMOXE66Znh
 eoXa03U3xlMIpp1TFzgZwOUTagHnQ2jZEoymw6mf2li7yxrZVlRgqfI3plSw/2j8
 vaI68SimrLi9hB92/mbT3w7L4vPsb/wrqfKXPx5fFdv2MfRqax0DdUAlK+YaH7Kn
 AJ6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1682042307; x=1682128707; bh=xUAZyNdG+JjO3
 VI3lilfJ4OkHzwV6FlCSaYK+jkyBLU=; b=PxDoaUAOZc7aLv+qZ0XpARiL1Enum
 4TPr03XdXFp9wQ/2pP3YCWPBoHQM8Jvf1PU09JCM7nEtiUNhSMYZqRnTvjdlZ4i+
 ysE40BVyUhMZwfjMbI45UplPZ8scLyMdS7vmLtNaGYBtY2CypOsgQ/aBshaZ/NgU
 /Lw3dhTfyYKY+4HI1y7SIpxzv/jqAnAcIe6a71JZn8ZG63uWZNX5VMhTGFXRMTq5
 wF1rJ79WAs4R/WnzBZKNEwbP+yjmTxpnGJd16wUAudq8Tfqk5qfbOUOoR16ugvBA
 vkzSfYN7Q5p1q3UddmlgxduoWE/im1T1uPtYRkI3lV4zx9cMZbyx2K0Yw==
X-ME-Sender: <xms:wu1BZOv4cgeshDILQhNPRdrMFNeijBR68tYB5ZqHjNop38Jp3Qen-g>
 <xme:wu1BZDc6MQJYbX_zTkFRZ9wUS1BWfJzEte7vZdvL6BYbBM48o6pbJZaWKmzK6ezYP
 R02ebmXB2Q08e6puQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedtfedgheefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhushhpvggtthffohhmrghinhculdegledmnecujfgurhepofgfggfkjghffffhvfev
 ufgtsehttdertderredtnecuhfhrohhmpedftehnughrvgifucflvghffhgvrhihfdcuoe
 grnhgurhgvfiesrghjrdhiugdrrghuqeenucggtffrrghtthgvrhhnpeekvdelkeeiiedv
 teejvdffteetgeduudeiteejtdeigfffveeitdekfedtgfelleenucffohhmrghinhepsh
 houhhrtggvfhhorhhgvgdrnhgvthenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:wu1BZJyLV33AXMVWF3pTi-xKtR9q9vzaP3-qDvRinb_6VU6MkD3Rzw>
 <xmx:wu1BZJMFaEZxpEUU6otNXB1q-GnsR_VV3piUUKEdGvUFY52TIJ16Uw>
 <xmx:wu1BZO81FEkYl2n33aHqy25Rc_ntLY8QFN7QHGtOwxqn7Swn7727Rw>
 <xmx:w-1BZFZgJSVDmeSN8p8BbqdsUMk4Cm5njRzywsfRW290xsuH1uoB8g>
Feedback-ID: idfb84289:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 742C71700089; Thu, 20 Apr 2023 21:58:26 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-372-g43825cb665-fm-20230411.003-g43825cb6
Mime-Version: 1.0
Message-Id: <996b59f0-ea87-4008-a908-35b29b550b1b@app.fastmail.com>
In-Reply-To: <ZEEr0r/6/lLiwlsy@minyard.net>
References: <20230419150032.3483229-1-govert.overgaauw@prodrive-technologies.com>
 <ZEEr0r/6/lLiwlsy@minyard.net>
Date: Fri, 21 Apr 2023 11:28:05 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>,
 "Govert Overgaauw" <govert.overgaauw@prodrive-technologies.com>,
 vernon.mauery@linux.intel.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Thu, 20 Apr 2023, at 21:40, Corey Minyard wrote:
 > Andrew, what do you think? I'm a bit short on details of the IPMI KCS state
 machine and expectations of userspace in this exact case. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ppgJW-00E8gQ-S0
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmi-bmc: Improve errno
 returned to userspace
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Zev Weiss <zev@bewilderbeest.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On Thu, 20 Apr 2023, at 21:40, Corey Minyard wrote:
> Andrew, what do you think?

I'm a bit short on details of the IPMI KCS state machine and expectations of userspace in this exact case.

I've added Vernon who is one of the IPMI maintainers for OpenBMC.

I've also added Zev who's an interested party, and openbmc@ for good measure.

Andrew

>
> -corey
>
> On Wed, Apr 19, 2023 at 05:00:32PM +0200, Govert Overgaauw via 
> Openipmi-developer wrote:
>> While the KCS driver is not in KCS_PHASE_WAIT_READ state it returns
>> -EINVAL to userspace on a write call. change this to -EAGAIN to indicate
>> that the error is related to the state and not the argument.
>> 
>> Signed-off-by: Govert Overgaauw <govert.overgaauw@prodrive-technologies.com>
>> ---
>>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
>> index cf670e891966..4c7400faf333 100644
>> --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
>> +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
>> @@ -405,7 +405,7 @@ static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
>>  		kcs_bmc_write_data(priv->client.dev, priv->data_out[0]);
>>  		ret = count;
>>  	} else {
>> -		ret = -EINVAL;
>> +		ret = -EAGAIN;
>>  	}
>>  	spin_unlock_irq(&priv->lock);
>>  
>> -- 
>> 2.30.2
>> 
>> 
>> 
>> _______________________________________________
>> Openipmi-developer mailing list
>> Openipmi-developer@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

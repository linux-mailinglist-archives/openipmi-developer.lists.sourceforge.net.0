Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2986BC1914
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Oct 2025 15:50:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BIm5yGkFieX/Ja4KbGERIj8PouX6rbRN+G07rcZHp50=; b=IBBnA/pfsncSvLwgA+WNUAcNkH
	WUrqo7Y/nWk3Cuw8J4eGFe+73Jrthy+cORxSuDTtHDLe30BIOsFJcgUNZUmRL4LOU2qEGG1Sqjrxm
	PdbTBFSEGDD/0yB41lHcbqgfu/k/uIgx2i28XbjHOizJ0FHbd5Ut5zjNrWM8YGQK0r9I=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v685O-00079Z-H2;
	Tue, 07 Oct 2025 13:50:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1v685L-00079R-OX
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Oct 2025 13:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PU88MOj1iugDx7ISR3e7spa94+oBCAlA7CxJqDD0qGc=; b=Cr/pr4u4wiRX7UloTtba/YipAJ
 CvhM53YAai3kFTnqIdqAAheiBToCl6zKOiQKLSYnCyUSfuhYiCddK+plXh2YA5hfAiD+SFDVg9qQ5
 7qnyGBefootKwFgPDd2GGh3I1rMwZ0wwR7tsU2RpaIHxk/l7a+vKHQniTmrIHA5CEb/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PU88MOj1iugDx7ISR3e7spa94+oBCAlA7CxJqDD0qGc=; b=i9fFHVkaeK8vElhfXMZ7I5BLij
 o2o72KmCcj0TXii2zyJXO6p+40uPEZPWYorLDtokS6wKFOMiczui+yP4ewgcyQEWs7NiI3AXPsmha
 6GZj9CScV3AvpSKESu38lxtrPVbcDjAbL3b3egsGA2KR201tGXg856CO86gKIJGTe9eE=;
Received: from mail-pl1-f169.google.com ([209.85.214.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v685M-00010V-2P for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Oct 2025 13:50:36 +0000
Received: by mail-pl1-f169.google.com with SMTP id
 d9443c01a7336-2680cf68265so46042565ad.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Oct 2025 06:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1759845025; x=1760449825; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=PU88MOj1iugDx7ISR3e7spa94+oBCAlA7CxJqDD0qGc=;
 b=gWiXvIro6bNrCyXSa+sv32wyLtav2CJXTa4FeDH4sVwfg30sNbtqfQVh4M+RxDYZX+
 Kjm+mbbPiB4BH6tV3MpyiBtaG4crlpgDzsIVxcxyMo0kEo63++nzuB+4PbSROvZhGdaj
 A5ZrdgvCRr5hzyhsJwFgPvlnQsg8+c1SNxHBWJ2EUUVvG8ReeJPonbxoCCy5MfOPdl1q
 59j5/hVKjPMFa1CVHMPWxj/Zh6d+K3mwIXlRr2P5Ty5V7APB5pnUbA2qRKdQ0PdmKEPP
 9BKpVJVLTAjEnuETFXVc4xOQvB6UlclZ4oWzqZ00jwY5ecoVhgsdAfZBZ/a0zhZL+2KS
 EWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759845025; x=1760449825;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PU88MOj1iugDx7ISR3e7spa94+oBCAlA7CxJqDD0qGc=;
 b=BD6fc/nbX+0dj8FErdkG/3qMcRJUT2+TUH2xOGbTN5XaWIBw0RTVwyMT7E6P/Z9PSR
 /wZoKWZnZgX3MT4BuloyJ32i5tY+RFRJejYKK0Ik7BqdF8ylw/6q2euLjfdwzmDvdYnR
 1Od8s2rKU6WGthFOVdAdCWd4eKVPGR20H9A8KmKnA894u7JkGLNDh7N06nwLZ8ZGo3n+
 h5hsQjzEtWD8zo2YjI2esHj0R3C+sTXyh67oYJO3x60MwdGtTeoLQEdSW0LMNMFSG6R3
 5oFhKULl+xejuyCr37ANb2Avfw/xyZp65r1h3HeqRYB4hTqvlxX7ILxVx0BPxfkdcYnC
 SB+A==
X-Gm-Message-State: AOJu0YxhdgMGts3SL7eTDH/IR2UAS3N3qYo2IZnEL9c4WeatpjJ6rfLv
 Mu/wfRbHYd3tTdGHrreoCrLFrbgKBh6suXmk57vjDURmr6/XBn3fG5bk
X-Gm-Gg: ASbGnctbGD1h+qMV0hb0X8PK8oOtpQkKcC46sv26lJ7nUwjOtGA7HZTqEc+moGqzXVw
 hKwHVR3BMAYrpXLSsvFWch2hTjHM4xRCI6Ro/gVCOW1yB1TWvzWbTwyspcgaCFVIr/20FH5zVDX
 wYTQIcRRajJoUDrFSRqtvnpfP6+HgPY5FVkfS0QnVIh5fT7jefiF+kzhrvkKQxL5bGS9cJJiNmc
 oikWwsdwja10c5N8rU25AL6Wn9BDiph3K/5GQffTrBOx6cJxUXLQSMQsA62jx9y/FzUYj/dlpkR
 Y7UiN2+QumCLdb5dRJI1XNClfL9GYJYQLMvfPe9IZEK0FipljRVYWisFrAol4J0X9boMotqF0M8
 kL8/kcu2/OR4WV2LVzbFvWb9Vl9T3IdWxkidRP8jgdSn/gAnhd0tZ0Mior5oExrZZfSfq/FR3i7
 UZRLGaGsJje6t9MMxXviY=
X-Google-Smtp-Source: AGHT+IECR+fLbT4nVOhBnG7BneTiTnCB8vIoTx8OkNflKGuhB3LN0I9D+BTXYVo1e8Sza85A6u/SbQ==
X-Received: by 2002:a17:903:b46:b0:264:f714:8dce with SMTP id
 d9443c01a7336-28e9a61aa78mr225602495ad.36.1759845025343; 
 Tue, 07 Oct 2025 06:50:25 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5?
 ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-28e8d1ee1basm166371225ad.128.2025.10.07.06.50.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Oct 2025 06:50:24 -0700 (PDT)
Message-ID: <e26d311e-a854-4892-8d75-69f7dc198231@roeck-us.net>
Date: Tue, 7 Oct 2025 06:50:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: corey@minyard.net
References: <20251006201857.3433837-1-linux@roeck-us.net>
 <aOT9c1ULJolUHPSA@mail.minyard.net>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <aOT9c1ULJolUHPSA@mail.minyard.net>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/7/25 04:45, Corey Minyard wrote: > On Mon, Oct 06, 2025
 at 01:18:57PM -0700, Guenter Roeck wrote: >> Prior to commit b52da4054ee0
 ("ipmi: Rework user message limit handling"), >> i_ipmi_request( [...] 
 Content analysis details:   (0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [groeck7(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [groeck7(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.169 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1v685M-00010V-2P
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix handling of messages
 with provided receive message pointer
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
Cc: Greg Thelen <gthelen@google.com>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/7/25 04:45, Corey Minyard wrote:
> On Mon, Oct 06, 2025 at 01:18:57PM -0700, Guenter Roeck wrote:
>> Prior to commit b52da4054ee0 ("ipmi: Rework user message limit handling"),
>> i_ipmi_request() used to increase the user reference counter if the receive
>> message is provided by the caller of IPMI API functions. This is no longer
>> the case. However, ipmi_free_recv_msg() is still called and decreases the
>> reference counter. This results in the reference counter reaching zero,
>> the user data pointer is released, and all kinds of interesting crashes are
>> seen.
>>
>> Fix the problem by increasing user reference counter if the receive message
>> has been provided by the caller.
> 
> Yes, the only interface that uses this that would matter is the watchdog
> timer, which my tests don't currently cover.  I guess I need to add some
> tests.
> 

Yes, that is the one that is crashing. Sorry, I should have mentioned that.

> Sorry, and thanks for the fix.  It's queued for next release.
> 

Thanks!

Guenter



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

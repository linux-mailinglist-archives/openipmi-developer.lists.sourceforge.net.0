Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B0AAEF840
	for <lists+openipmi-developer@lfdr.de>; Tue,  1 Jul 2025 14:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:References:Mime-Version:
	In-Reply-To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LLVf8gkki8bQwUbXDU9Y5J8Nli4JhRUTu+snPbpmIes=; b=LOe44eigM7IYy5RpSrBaNyUTxl
	Ewc8KZy9jkpn96mpag2cq6Mczq+JgHPsmS8ysGXJINadgBiQZS7Q+ub8jDoj9+z+PJVGgkair5bTp
	Oijzo+nFPxP2UkjCiqHLRC6BSs/wf0Pw9KQm8LtOMUewPcvV206/DjSY8TpBvpojt3Ls=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uWa0v-0003TO-0z;
	Tue, 01 Jul 2025 12:23:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3-K9jaAgKADEWNPXZNaOTbbTYR.PbZ@flex--jackmanb.bounces.google.com>)
 id 1uWXfo-0007lu-PS for openipmi-developer@lists.sourceforge.net;
 Tue, 01 Jul 2025 09:53:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 References:Mime-Version:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AsO4MNbP6/LHgR7nHvgKu5wEJwKc2jZzt2g+cQIzNfE=; b=DzNWji6fcpH/VQ8OVoIgTth+Mp
 fGFUWYXqydu9PvLsEAXiGiPEUF8oB45eDQTHFFTIv/2ldXelqSg8uKz72g/M+JIdkmwjx3Rnlng4l
 NAJll1MJG9ls+s1FhNzGhVqnEX4iYVK72um+KdB64o8LsVoKnzk4j3jbpl2oklmrhGMQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:References:Mime-Version:
 In-Reply-To:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AsO4MNbP6/LHgR7nHvgKu5wEJwKc2jZzt2g+cQIzNfE=; b=UxRsApHN8MyJzahRcCkTP+xD3D
 qSPyBx5iZMhW5tQrwSh7etQPdn+Td/C2R6ZFIVW02UvFWPejE/A2xE+iaJ5wN/m3/sUJIYIY+kgmT
 vvBm2d8asG84g5Inwi1OP/hI1wrMEf3BT/bxv0fhJgzj+L/L7Tb3Gh6p/TSCN4YoWeKI=;
Received: from mail-wm1-f73.google.com ([209.85.128.73])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uWXfo-0000yo-Df for openipmi-developer@lists.sourceforge.net;
 Tue, 01 Jul 2025 09:53:08 +0000
Received: by mail-wm1-f73.google.com with SMTP id
 5b1f17b1804b1-452ff9e054eso25904775e9.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 01 Jul 2025 02:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1751363577; x=1751968377;
 darn=lists.sourceforge.net; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=AsO4MNbP6/LHgR7nHvgKu5wEJwKc2jZzt2g+cQIzNfE=;
 b=KYxBJ94sBBg0DhBgDmm1Bu58BeATaEWyAJxF+sMrU41Tq4m7i1ieJMj/qj6NbYOtlE
 wl2+tAtpETLF7JET3+w1YfBGue8BdHecgQcr/nhEJ061oMQ+m/orXwQRFMCrctkppJyB
 I3tOxTXEZRFtbON9hG1AhhkF8zUVrgHIbt1LWQBeV25cR/bBYavawDnm7Z/cEqWxKCUh
 yvJteC/ZtNt4kySoj5O9I8WxxgdtZPSFezEhttc1R6b+dW7vPaZbbPX53kg2ky2J4Uxv
 o+3yKooffI6K5o9vm0PfNJgemTxMkv6T2bJd3OmLHv1QZa3c4QiNmqqQU6viUVXmUkds
 d5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751363577; x=1751968377;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AsO4MNbP6/LHgR7nHvgKu5wEJwKc2jZzt2g+cQIzNfE=;
 b=v6rlz5l/GbQIgE0AeJ8oDRN+9B0izwJWsOCwqN2+RnkLHrTjWp25yAS+N0/22+d3sB
 GrRGatWm8aG155GZMz2pduS7cwIIeYXMs2x9Nv/ERZr8lG4j8iYvKwf2mcs0Y0grVgxi
 qyioXfHnzA3rE2kgQlrKh0CC2QAo4OPGty/ICyPp7k505YGJTPnyD2TNsjdiZ6qf/CH9
 J06a5hFVS0PEexyD2q9+NQAMy5RFWme3Rmlu1vQTzxzkxYz23CDWZ3HkbaBkS3PpRB6S
 O0NjxcEPNpefQBKZbCd/RzJzgji0SpPQmiBfffD2TGZzAiO341gORpGDjlVevIW0RrhK
 b0Xw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXb5u48raOkztcsnK0yNlFFjWenyWwcfe6URyha4WtSG1e76tKNBSvDtuvx+HHmRvofi0/IHIEm1ClKeA0QOf26y1U=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YygZ09do68CHRjzrhAQBjLpcmn9Ik5UbPrr3Y5BrWigZUtDgW+O
 1c+NnfQNCF6uo1ieuMyrH1OflnnxvwVX28uEniq6oSHTCAKeDoAaXUmhmDcwGlDypUc5d2Cc8dU
 3OXATeMVbXpGAmA==
X-Google-Smtp-Source: AGHT+IFvqQhgygm6Ns7DmopGcnlkaCqQTFJuAvO9MrADA3egshrgy5Yzka4HTdvu9aa5pUh3EkhdD3/3DmWlVA==
X-Received: from wmrn33.prod.google.com ([2002:a05:600c:5021:b0:450:dcfd:1870])
 (user=jackmanb job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:4fce:b0:442:f4a3:b5f2 with SMTP id
 5b1f17b1804b1-45390259d15mr141264015e9.6.1751363576854; 
 Tue, 01 Jul 2025 02:52:56 -0700 (PDT)
Date: Tue, 01 Jul 2025 09:52:55 +0000
In-Reply-To: <2025063054-abridge-conclude-3dad@gregkh>
Mime-Version: 1.0
References: <20250630-ipmi-fix-v1-1-2d496de3c856@google.com>
 <2025063054-abridge-conclude-3dad@gregkh>
X-Mailer: aerc 0.20.1
Message-ID: <DB0MKNAAHYVK.3V2BN2WP3C7ZI@google.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon Jun 30, 2025 at 6:10 PM UTC, Greg KH wrote: > On Mon, 
 Jun 30, 2025 at 05:09:02PM +0000, Brendan Jackman wrote: >> From: Dan Carpenter
 <dan.carpenter@linaro.org> >> >> commit fa332f5dc6fc662ad7d [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.73 listed in wl.mailspike.net]
 -0.1 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1uWXfo-0000yo-Df
X-Mailman-Approved-At: Tue, 01 Jul 2025 12:23:02 +0000
Subject: Re: [Openipmi-developer] [PATCH stable] ipmi:msghandler: Fix
 potential memory corruption in ipmi_create_user()
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
From: Brendan Jackman via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Brendan Jackman <jackmanb@google.com>
Cc: Corey Minyard <cminyard@mvista.com>, Corey Minyard <minyard@acm.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon Jun 30, 2025 at 6:10 PM UTC, Greg KH wrote:
> On Mon, Jun 30, 2025 at 05:09:02PM +0000, Brendan Jackman wrote:
>> From: Dan Carpenter <dan.carpenter@linaro.org>
>> 
>> commit fa332f5dc6fc662ad7d3200048772c96b861cf6b upstream
>> 
>> The "intf" list iterator is an invalid pointer if the correct
>> "intf->intf_num" is not found.  Calling atomic_dec(&intf->nr_users) on
>> and invalid pointer will lead to memory corruption.
>> 
>> We don't really need to call atomic_dec() if we haven't called
>> atomic_add_return() so update the if (intf->in_shutdown) path as well.
>> 
>> Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
>> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
>> Message-ID: <aBjMZ8RYrOt6NOgi@stanley.mountain>
>> Signed-off-by: Corey Minyard <corey@minyard.net>
>> Signed-off-by: Brendan Jackman <jackmanb@google.com>
>> ---
>> I have tested this in 6.12 with Google's platform drivers added to
>> reproduce the bug.  The bug causes the panic notifier chain to get
>> corrupted leading to a crash. With the fix this goes away.
>> 
>> Applies to 6.6 too but I haven't tested it there.
>
> So what kernels are you wanting this to be applied to?

Right, sorry for the ambiguity.  I've just applied the patch to 6.6 and
booted QEMU and it worked fine.

I have not reproduced a crash in 6.6 but it's pretty clearly a real bug
(it decrements the target of an uninitialized pointer).

So if you're OK with that then please apply to 6.6 and 6.12. Otherwise
just 6.12 is fine, I will send another PATCH if I ever hit the issue for
real in 6.6.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

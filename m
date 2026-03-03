Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LiELh3ppmnjZgAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 03 Mar 2026 14:58:53 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 140EC1F0E34
	for <lists+openipmi-developer@lfdr.de>; Tue, 03 Mar 2026 14:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O9U3MY/QCCRfP33VC/z54ISJqk2owMM9woweDpRT2Mk=; b=epbAhEo+H06sSo9orM76VItcjP
	DTfQTrtahSWtMAoBXLOpCcv3QS/sr77mYdyqLTA2KCF/YI1u17DqVMhVct71qisxy7naqUU0sYomh
	4Q4LgXtGwsuePNcmYiSzbPTdP8jTApgkc3fz283PXGeqhvOoJPezDkMWD5AfrieU5lHg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vxQGn-0004dQ-S3;
	Tue, 03 Mar 2026 13:58:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vxQGm-0004dA-04
 for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Mar 2026 13:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mWCoaOzR9uBfvNEfHUBllWK2zOLetorqQBXT8p4iwp4=; b=MRicmHVnvR/G1T3i6NcZUh7ZIC
 bjIwgn2la4BFFt71oKB0PKmEOP2DrfIKfQcIGpWzs4ayGFNn53RSwIcETHWcdp592EATMVjGe2EfI
 foyXgnKeTByZMFu0Ksm6na4EebgVztNvhklxJl/w/QnB6FEF0NvFgoKL9u7hB7JyIeDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mWCoaOzR9uBfvNEfHUBllWK2zOLetorqQBXT8p4iwp4=; b=kqHOB3VLfJf+MwsatAa7jJAOmD
 LZx6KvYsn4Y1tl3RVQogbonSu2UGIg4g710CbDNTb5Oy7PPVv5etTJOV2F1wgvsqMwsJEvnyK6bOB
 W7DYZ6XcyRMiS3iTm0XU2oeHhYx13kHBh1cxLBjE+D1n6L1DBUZN1j78D66E9ErQq1pY=;
Received: from mail-qk1-f174.google.com ([209.85.222.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vxQGm-0006iP-AI for openipmi-developer@lists.sourceforge.net;
 Tue, 03 Mar 2026 13:58:40 +0000
Received: by mail-qk1-f174.google.com with SMTP id
 af79cd13be357-8c7199e7f79so770168785a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 03 Mar 2026 05:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1772546314; x=1773151114; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mWCoaOzR9uBfvNEfHUBllWK2zOLetorqQBXT8p4iwp4=;
 b=eeSbnvttpKAFWjQWHAsqoZJtgMxn5KIWAKGHEw4RQHTrGpBRIgPMkDMijmnYjTrE93
 QXQxRtfrLQ7KfeyLb6Gz0+SynDhN6TX8EM0Ec6ndhllyrJPbLioaJ0WCJpcqMF3mIWRr
 5YhUY+j3QXIj+WKw5bRHisMxPkSx4PFBNTBl1WkirIY1jrSdLRj3Px53NJmucvrhq6Ul
 o+s6hFklNeJEIapemSXsTzAIPt2TbHhTu6naE4PR3hobZrl2ihz1BNmsNKODtUzqhpZL
 VJYOtUiV0bgBXH7TsA19OtLvc8WgzWtZJQb6xgxL97TAoaC1MBn7HS/Mx/9/gXSCu340
 S+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772546314; x=1773151114;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=mWCoaOzR9uBfvNEfHUBllWK2zOLetorqQBXT8p4iwp4=;
 b=D/1iiOxjZKZyUjavzt+EAlMnevheAOqE50GX4V+PiS/xPUitcwtbm14Wd7onWbBaVY
 1W1NmeW0364jpn9QJDCilrlOR1o1Pa/1k9tNKqRqi+B3DRFiY9td3Id5XbOMOmcAV+Hi
 NLSucIZrrVLsOX4ayjyKxuema9XTBeuu7G0Ek1ZR3DmU4mXQlTzsUdVpuxqZ1cALpBFb
 6sz3XGSL9uETSU7uwg3eN9KX+m+iBN5z4JbhZigL6fa4Cm+/GWyuT2xNU3LgCHrzbEqj
 dgBIy1ppSZ34pZyyVd/VzcjmjIuY9H6jrc37IZnPPzZ7766gteBwGx4YCHRRt82eNs+H
 mbiQ==
X-Gm-Message-State: AOJu0YzFMYQx+iY/ktyHeAf6V6R/RRoUA2GWHpvD43Rp0vPHbf8XmfEo
 qWjronWlB1fiQyxUTn0Ub0Ac3ZTFgNjNK+fZZWSxRZl5hjK0eS+/F01aHa2qFRssEn9YthZGFmf
 JackVNxY=
X-Gm-Gg: ATEYQzyjA8uaZOVob+id0mukR/Y9y6iJeU2K6mROTysjLnXYnl8S5/dvd7Hyl69zNNh
 kQJHWfnNkEHEonQvehpyb6VYGYYDqeIm2XAzLfolllzB1GGzPMb9fp23OF5bLVqRMBR4ThIXKvS
 mNaelSl6QOTxw/wntxtdcEOB9P2F+SI3jC7eJLaLOJb2od0aNx2BATSlAZvNNf4eH6PRpCX2SEf
 sR8JIYaNjmgPw6H+F6of02/BVh6YVepWqbc9Pt4APMVjJj8zKJ96b6YoVO9+VNW5Djvvn6mcJ+r
 XMvkvg+kUVJbhdqQNgFWgu8OiV+zSWZmxg4fZ0HL7InA1CXs4h2dgZBkRV50fkV8jeLGaDPLIU6
 zrkjF1733UgtTzLvHuarToeqW7QgvHCmqxLXbTzl6acdrC2LpNuXocPk8SajZOZ6SpPsZKEc0tk
 q9lxXtcFN7r7hTxqCL0hzZHtjt7D6uxy/BlJDJ9RMu/cHFbf7LJdpqb4unQxsFxWAym7brxPg9Z
 P+QkaZZsSKjg28=
X-Received: by 2002:a05:6830:67ef:b0:7cf:e41d:f0b0 with SMTP id
 46e09a7af769-7d591bd0edamr10444750a34.18.1772545825416; 
 Tue, 03 Mar 2026 05:50:25 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:af66:a009:e38d:97d9])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-4160cf239e0sm15467040fac.1.2026.03.03.05.50.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2026 05:50:24 -0800 (PST)
Date: Tue, 3 Mar 2026 07:50:21 -0600
From: Corey Minyard <corey@minyard.net>
To: Jian Zhang <zhangjian.3032@bytedance.com>
Message-ID: <aabnHaOxgqHOxFTl@mail.minyard.net>
References: <20260302061746.1579192-1-zhangjian.3032@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260302061746.1579192-1-zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 02, 2026 at 02:17:46PM +0800, Jian Zhang wrote:
 > A valid IPMI over SSIF response must contain at least three bytes >
 (NetFn/LUN, 
 Command and Completion Code). > > Some DMA-only I2C contro [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.174 listed in wl.mailspike.net]
X-Headers-End: 1vxQGm-0006iP-AI
Subject: Re: [Openipmi-developer] [RFC] ipmi: ipmi_ssif: require minimum
 response length
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 140EC1F0E34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhangjian.3032@bytedance.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 02:17:46PM +0800, Jian Zhang wrote:
> A valid IPMI over SSIF response must contain at least three bytes
> (NetFn/LUN, Command and Completion Code).
> 
> Some DMA-only I2C controllers may return short reads instead of a
> proper NACK when the response is not ready. Treat such short reads
> as incomplete and retry until a full response is received.

Well that's unfriendly of them.

Anyway, I see the issue.  I would ask a couple of things:

Can you add a comment before this "if" statement so people in the future
know why it's this way?  Otherwise it's a bit mysterious.

Wouldn't the i2c_smbus_read_block_data() in ipmi_ssif_thread() have the
same issue?  We should fix all of these if so.

Thanks,

-corey

> 
> Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 37a5cb5c53f1..64ee939a7a4b 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1300,7 +1300,7 @@ static int read_response(struct i2c_client *client, unsigned char *resp)
>  	while (retry_cnt > 0) {
>  		ret = i2c_smbus_read_block_data(client, SSIF_IPMI_RESPONSE,
>  						resp);
> -		if (ret > 0)
> +		if (ret >= 3)
>  			break;
>  		msleep(SSIF_MSG_MSEC);
>  		retry_cnt--;
> -- 
> 2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

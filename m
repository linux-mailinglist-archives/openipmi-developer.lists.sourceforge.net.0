Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBC2D1A15C
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Jan 2026 17:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CL6Pc+dIfMoc9tI+4GGrFE2cWK/Vk2HwJrY0gzOMTfg=; b=BQiR8GLuCcm8YfiikENUb4pljD
	3AspsISKNveJ7bAJnp26A/8OPt+sIweCkJR5hivzy3UCMz8xo1i0lr1wQ5jxzRpJopzfxg30rTWr4
	3XGbqlXt6BhrO4aiGr0xQOfpv40E2Dzz1pnbwZpPO97wXsgR4lE5yUpKyj6MIluoRmdo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vfgvl-00017m-Va;
	Tue, 13 Jan 2026 16:07:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vfgvk-00017g-U2
 for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Jan 2026 16:07:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XsuX5yajvw+W6Z78crCjYLRBYcrX2pWpa1tg2qXBFGs=; b=fkITxwg6QzyDs8/nobobc/z0ol
 ijBUgcqNkyM9sE7mvwgMRJwzvbSknGXQoyaoDdLcK7XSDuM2QPygGn6B432/FFBlsjyrg+4jqpM47
 PLZSvuF4LFFEOQsTyrTKC4wM/RmDU0ITVwJ+50p4cj5U5Z/QsbsymvdEQQ98JoVlLnhk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XsuX5yajvw+W6Z78crCjYLRBYcrX2pWpa1tg2qXBFGs=; b=JXwlizpSC5AUcBsNGDON0KVInV
 M4/9LbUtUTYSSwF+tCkr2r+fSPQOApaRrfCYCTBRouKrVIPrUXw3EtfWqFYFpoLsphppKROKrxcC3
 ziqE4Ne7iL5y5ct5faHTktKprJQTjNrV/46CeiRBOI5UMpsHBqKjy0xovVFgU8yzx7ek=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vfgvk-0003tZ-FZ for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Jan 2026 16:07:40 +0000
Received: by mail-qt1-f179.google.com with SMTP id
 d75a77b69052e-5013c1850bdso8168961cf.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Jan 2026 08:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1768320454; x=1768925254; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XsuX5yajvw+W6Z78crCjYLRBYcrX2pWpa1tg2qXBFGs=;
 b=O4WbloIleWbmmwzyXZxYNCQn0mUSX4I1NePuOfoP9ND3ANPbVwJ1soP6mThBKqyGc6
 7WMj76T+Iuf3Im7PYkxOYinYXDwFjNd68Owwe6ErC3fagOPHd9ImUr02NXgxOqK20GZq
 /2kBIiM1IuDBoDkfa6am9m2PCW3kofXDWfWspDi0zuBnsoBDpwoJvXC0Ja8fLqntmkCj
 PHpYoF0DVI1YTpHzeDlbJpNT9D7rl8/zG1CK6BJUOktZXITRtDXllekER9hcDIG+nA2o
 VhevPiEmDlZEJYBBZkjKlWkSYXFnKRDxyXjPF+x9ewCiyx0osJEspbohd7HkbxMNCXjH
 HIXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768320454; x=1768925254;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=XsuX5yajvw+W6Z78crCjYLRBYcrX2pWpa1tg2qXBFGs=;
 b=ddj3e47VUCAckImdj89KPS2Z6L13Z5/evXs/jTvZp57w8rmAEPjCRgG1mrHG7eMU/7
 e2LNk0RWJjFgmnD4+0hkwFWv676MH1mwimn9cdzAIs6f7bOMBSGXWptbYWZRPZR6IOBO
 QKcxqsUFYZP6yoSZYJ3ZHdcSeIejFVyj2vfGtwEo2E305OxC5TGY0O/64EA1JPaG2HKs
 4a7ClX22CTsN7FAqWRd4NMFGLpjvqBYg6M6QnktY583NL38+Vz4jqgPFAtnrlM0sb06g
 xLZuDFZ5Y3/DS6wPBOrG+Q3aZximZ7lBik1n35T1fw48D7LCZ2uHPaHck0XZ6oBzUrH7
 W45w==
X-Forwarded-Encrypted: i=1;
 AJvYcCX++tIGQ0BXLc7a/zZJsRSAcZpR5Tp/G68oWKKGtizr/ur7YcJiNw1lUsU391wyvXc7H7b+iPW72uFMQC4XumOCbGI=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzbKMYgb1vWmBQutKAtI6Z5IQu66pI94JO4LUhXIWAH0TKET9en
 6pNR/Io3X/dYSfxn66tudsWz93/8JRs2FP7Z7LUcLAFVTLGKDfjNZrPM3wvlEYsRviN1lufeUOD
 ghQiUJOA=
X-Gm-Gg: AY/fxX5Q/wDvTmONcNAwKSEJNLBazyGEZ6Ygk6hZ1R5OsHjK3nfWqlwVKR7KpYffZRm
 6QfwyjjfP4rW9vB7cEjRpnNoT51qB8zwhTqYAmNx8BkT6ilETws2wv8UM72ZjUFUvUTUOF90uZJ
 oF/vN07zEaggaTN8T0hy3Oz8tqVjZaSwD+MbWCahr5SqJuKtZplMyOBghuGuvIrHv8aolQ0x8p5
 DjqPJqvWBSrbu82RNrK1k7NwPaMIFtghtMqCgF00IUtAn2IpSQSX3cRQJf//GlwuivTroqZ809e
 pcFRSMs12ISmh3zs6U3KFgeDy61kb5dxj6nS0suytMk0ebe2K0E1W/9+MpKHIqI2rxSIfKnmgOg
 tvcvnXbEKMILnvJFj9iJREB92php3z8nM+VdEvwVZnA8JxTwWeTUAG9/JEOPfiw09dBj/ADKBXI
 Xlvzp39zdjkvHD
X-Google-Smtp-Source: AGHT+IEExdJDRJEkeBH1kARx4YS5Zq9oUtRgvBa1H5KYRB90PjXpF0Uq/j0UBh/X8e4qVkbh188kGA==
X-Received: by 2002:a05:6808:c2cc:b0:450:390e:61da with SMTP id
 5614622812f47-45a6bcd9ac6mr10834806b6e.5.1768320009101; 
 Tue, 13 Jan 2026 08:00:09 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:a63f:8616:7723:f65])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-45a5e2b74e0sm9601105b6e.16.2026.01.13.08.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jan 2026 08:00:08 -0800 (PST)
Date: Tue, 13 Jan 2026 10:00:02 -0600
From: Corey Minyard <corey@minyard.net>
To: Matt Johnston <matt@codeconstruct.com.au>
Message-ID: <aWZsAt8unYL6khJj@mail.minyard.net>
References: <20260113-ipmb-read-init-v1-1-a9cbce7b94e3@codeconstruct.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113-ipmb-read-init-v1-1-a9cbce7b94e3@codeconstruct.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 13, 2026 at 05:41:34PM +0800,
 Matt Johnston wrote:
 > IPMB doesn't use i2c reads, but the handler needs to set a value. > Otherwise
 an i2c read will return an uninitialised value from the b [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vfgvk-0003tZ-FZ
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: initialise event
 handler read bytes
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
Cc: openipmi-developer@lists.sourceforge.net,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jan 13, 2026 at 05:41:34PM +0800, Matt Johnston wrote:
> IPMB doesn't use i2c reads, but the handler needs to set a value.
> Otherwise an i2c read will return an uninitialised value from the bus
> driver.

This is fine, I suppose.  It's probably better to do this.

Are you actually using this code?  How was it found?

-corey

> 
> Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> ---
>  drivers/char/ipmi/ipmi_ipmb.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
> index 3a51e58b24875497699c7af7a4af1c73b47653f3..28818952a7a4bf814b95bdfb7046672ad4526cf2 100644
> --- a/drivers/char/ipmi/ipmi_ipmb.c
> +++ b/drivers/char/ipmi/ipmi_ipmb.c
> @@ -202,11 +202,16 @@ static int ipmi_ipmb_slave_cb(struct i2c_client *client,
>  		break;
>  
>  	case I2C_SLAVE_READ_REQUESTED:
> +		*val = 0xff;
> +		ipmi_ipmb_check_msg_done(iidev);
> +		break;
> +
>  	case I2C_SLAVE_STOP:
>  		ipmi_ipmb_check_msg_done(iidev);
>  		break;
>  
>  	case I2C_SLAVE_READ_PROCESSED:
> +		*val = 0xff;
>  		break;
>  	}
>  
> 
> ---
> base-commit: b71e635feefc852405b14620a7fc58c4c80c0f73
> change-id: 20260113-ipmb-read-init-5b97dfbcd3b9
> 
> Best regards,
> -- 
> Matt Johnston <matt@codeconstruct.com.au>
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

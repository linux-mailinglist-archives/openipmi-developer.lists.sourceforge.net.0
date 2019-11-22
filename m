Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0192C107816
	for <lists+openipmi-developer@lfdr.de>; Fri, 22 Nov 2019 20:40:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iYEnV-0002jl-5y; Fri, 22 Nov 2019 19:40:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iYEnT-0002jX-No
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Nov 2019 19:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4mNZznLq/HyHs5kXhx2p+YBsBEb0wBOCJBKkau1d/eU=; b=Hm4sIaapfmMSg9YXe7K5R5ClY1
 xqMBqJiHN4dx+lMjq5fzgIW+85olqkM2cCG4zZ5gpCr+vR4yeuqr4URXT2B6kBvh8r3WcFEzctB8+
 kNQZ0IJIdL7o66f5tjq+NAcUSa1cj/SLhUby4ekmt67gITrurZwMTYHIUayuItiyZWLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4mNZznLq/HyHs5kXhx2p+YBsBEb0wBOCJBKkau1d/eU=; b=e2atThdZviXD+dLqJrS1TYA2DX
 8npJHAiv4Wo32RQf30PHPER1Tx874zk+xr/COHK4AtExfImZCd+NrsST8gAvDJ+ztOmYWaJPU5HsD
 NWsIwn9XKEKWMhjPmQ1UqkSmK3uhGhNJlt8bYhxM49+2++UOJniap6ZResBj1tKIWc/Y=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iYEnS-00AhqF-9M
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Nov 2019 19:40:51 +0000
Received: by mail-oi1-f196.google.com with SMTP id a14so7548605oid.5
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 22 Nov 2019 11:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4mNZznLq/HyHs5kXhx2p+YBsBEb0wBOCJBKkau1d/eU=;
 b=HyyPfQzWpc8gEAzKgbjaANfO6ZJPyl/nYq3tasa5hwn2pLlipB8FxyMdO2iT7csZ1j
 RuFheadqpUwwJNGiQOqrVrSF/yT3SCkCMkyqZskj8zdGRX/oUZhAxEjXe6CP2GkhLdUz
 lykmNy12ZKv3V/zZlPhLwRP/Teoy9GWiX+6Sp3Vnnz6KmTwAIRmwnUNIBZVztYDVGNSZ
 gXfwFQUsOMwVwSGtGXOeEAcB9zaMMDHaQdP0p9vfMku8aVer4U7zdmg+hYelCjiJRK8p
 nZgLpU6NxW/SUvNcQkVpJuZH8zX9FMyoxF/xJlQMwOsoIArYMU9Ixk+AIxe20V/iultt
 WelQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=4mNZznLq/HyHs5kXhx2p+YBsBEb0wBOCJBKkau1d/eU=;
 b=ZMRMeiLsp0DJJevuPEKcfpqS5/0rJzEfi5D6fNOofT19Cwba0NTLLgO1/O1N+dFUEV
 spBeF1AOv1NFeBT9Ali9Dp4ehvC6/NqW/1oE4BrKPzr/dOw26ePyNT68EeS/GkffFWWU
 DYv2TDMzp8QBPQN/PgFU0FoTCUOT48+zjlABvQeXK+GdTkgt6lpX2DjqfhDJzksV34wO
 gz9drUHj16MH4WWawFITlle/LSmkyGB30fbM2kLwBJrcZ8UbXarEDcx1WQGEJuSdWvec
 7GqOJ8U9V61+2xJxS2EmZWjLictRWPy+Q6JK9Hi95S0jEuZ7bIFWZYuWMRh7fYbLnhdT
 1NHw==
X-Gm-Message-State: APjAAAU4EOjFsdWwXC9L2esphz+K5+JlyAvMBCRVp2XB8UMKavuddmV3
 ULetWiEBIXGadyNujOgizihu0fU=
X-Google-Smtp-Source: APXvYqxh0roDPrrTD6PX5fwbpjiYSOczNF6n2ENV3DqhV6cHC+S1PlSTng9VId57nPA4jPLh71CzKw==
X-Received: by 2002:aca:2818:: with SMTP id 24mr13954482oix.26.1574451644038; 
 Fri, 22 Nov 2019 11:40:44 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id x65sm2506290ota.16.2019.11.22.11.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 11:40:43 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id E4199180059;
 Fri, 22 Nov 2019 19:40:42 +0000 (UTC)
Date: Fri, 22 Nov 2019 13:40:41 -0600
From: Corey Minyard <minyard@acm.org>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Message-ID: <20191122194041.GB3527@minyard.net>
References: <20191120000741.30657-1-luc.vanoostenryck@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120000741.30657-1-luc.vanoostenryck@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iYEnS-00AhqF-9M
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix ipmb_poll()'s return type
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
Reply-To: minyard@acm.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 20, 2019 at 01:07:41AM +0100, Luc Van Oostenryck wrote:
> ipmb_poll() is defined as returning 'unsigned int' but the
> .poll method is declared as returning '__poll_t', a bitwise type.
> 
> Fix this by using the proper return type and using the EPOLL
> constants instead of the POLL ones, as required for __poll_t.

Copying the author for comment, but this looks ok with me.

-corey

> 
> CC: Corey Minyard <minyard@acm.org>
> CC: openipmi-developer@lists.sourceforge.net
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 285e0b8f9a97..2ea51147c3e8 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -154,16 +154,16 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	return ret ? : count;
>  }
>  
> -static unsigned int ipmb_poll(struct file *file, poll_table *wait)
> +static __poll_t ipmb_poll(struct file *file, poll_table *wait)
>  {
>  	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
> -	unsigned int mask = POLLOUT;
> +	__poll_t mask = EPOLLOUT;
>  
>  	mutex_lock(&ipmb_dev->file_mutex);
>  	poll_wait(file, &ipmb_dev->wait_queue, wait);
>  
>  	if (atomic_read(&ipmb_dev->request_queue_len))
> -		mask |= POLLIN;
> +		mask |= EPOLLIN;
>  	mutex_unlock(&ipmb_dev->file_mutex);
>  
>  	return mask;
> -- 
> 2.24.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

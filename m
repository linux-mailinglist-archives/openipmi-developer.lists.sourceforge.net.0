Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DB75F7E52
	for <lists+openipmi-developer@lfdr.de>; Fri,  7 Oct 2022 21:52:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogtO6-0008B8-Jd;
	Fri, 07 Oct 2022 19:52:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ogtNx-0008AM-1p
 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 19:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jfmHuIlDWKa5mG08nVjaMjmVIP8WKHfTsOECxye4kns=; b=kMdP8mwBnRLrX3UEEUXlpcSej3
 V8jNdX59kNBIsA0fKXgeM8kKA8ScpW8E0vHK/aHwyxiZMqCIa76qgOyuqnFbDcJCdNsGKbHDxV6dw
 ODrjwkbN5N6y0Lm5TvEMm9FdybAbrxM2m9SY6kJgKjATaImZ9frAj89roS2hCd1qfx9I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jfmHuIlDWKa5mG08nVjaMjmVIP8WKHfTsOECxye4kns=; b=RXWdu2KcUtI54Tycw1ruDmL0fX
 IcC/RZKn8AA9JeWtpBgY3LMpR567gvlvzoSNExBMyCVieMwlJ0BjaCbRD4Rz8rD0153Va8HvaKZoU
 ZNSQp6UMqfj7v3uulXmrKKVQZvry23li6gvVHSOApZzfrWNVB0iOXtY0UIsNGHIA5JME=;
Received: from mail-qt1-f172.google.com ([209.85.160.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogtNn-0002da-1F for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 19:51:48 +0000
Received: by mail-qt1-f172.google.com with SMTP id cj27so3429887qtb.7
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 07 Oct 2022 12:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jfmHuIlDWKa5mG08nVjaMjmVIP8WKHfTsOECxye4kns=;
 b=J+Ngm/hE8MvzHlhFqIDp3/VKr/DF2b3mtIe/2DdeYgrAt0zBTNWkewbTYkZvPdG8Di
 wYXvHLpcrIErjA5wMTNih6QE5uz7GvWMW6S852fItN/eeTQaNyhpZBJeLNNQFnipI6vX
 DQQtgSOXPOGaeOyT8fj1/dgLcIsyEmviwG+dnQcIdO+5oL0sKHikmits0hCMReHzCUo3
 D2LV5P7wNTfv5L2IpkxnZR/GaL6wlFCcXXakjUPSELQeU4Cwx6T/EHSqLEytoWTmfAsm
 dP1S+5EueRgvBUwY9a3Fyunvu7NoxFAJx4VrJThW7jvC/ZE218CDUc0jjlBvcF2DQtbg
 kYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=jfmHuIlDWKa5mG08nVjaMjmVIP8WKHfTsOECxye4kns=;
 b=3CduWPl2MhSyxXMWAi8EkR21HmDRiG5OYpD8HFlNdMg+GIpjqI5jARHWk8UcQ+SQsV
 geVQdx9jnC5PjGt+we2ex2fyyTotvvh5D6gNbfFSSpRlXrGOyZV5gLGTJUPVHyDOLK9K
 kZFu4KQiui7LmcXWboeODT9FV/n5u3xcoxytGLtaxEiXgj28eg5UJf0ygf9VmK0fvu0c
 L0F8Ww/dv3j124oKR1cvX1xsKWHFUZ7W9Rv14kpNKRh8piYa6vg9KqPFMClQWg6hawl/
 dkxLdOQTW46E99bwq6zFYdXVsKkNzMrdu7faxCLLVvbN6wA335wZadTbNha+HBIQddao
 AHfA==
X-Gm-Message-State: ACrzQf1sqKeDYiuOpVUgsixUNEDOVSf74pfTmZuufRojWXpZ9v7Xbl4x
 XKO5PNPdHSE2omhS/E2XgBePP3mdLA==
X-Google-Smtp-Source: AMsMyM5iSQcpjYhWMuvfOhMPYc7VVRGMD60zH8p0g/k1Z40oRw90aen9/3sgpgjgVNSIf2rZU5t+Ow==
X-Received: by 2002:ac8:5e4f:0:b0:388:532a:373c with SMTP id
 i15-20020ac85e4f000000b00388532a373cmr5845468qtx.90.1665172297120; 
 Fri, 07 Oct 2022 12:51:37 -0700 (PDT)
Received: from serve.minyard.net ([47.184.185.126])
 by smtp.gmail.com with ESMTPSA id
 j4-20020a05620a410400b006a6ab259261sm2944160qko.29.2022.10.07.12.51.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Oct 2022 12:51:36 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:fa3f:9b5b:700:c1ba])
 by serve.minyard.net (Postfix) with ESMTPSA id 1250B1800BD;
 Fri,  7 Oct 2022 19:51:35 +0000 (UTC)
Date: Fri, 7 Oct 2022 14:51:33 -0500
From: Corey Minyard <minyard@acm.org>
To: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Message-ID: <Y0CDRS+ppvKTiGml@minyard.net>
References: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
 <20221007092617.87597-4-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221007092617.87597-4-zhangyuchen.lcr@bytedance.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 07, 2022 at 05:26:17PM +0800, Zhang Yuchen wrote:
 > After the IPMI disconnect problem, the memory kept rising and we tried
 > to unload the driver to free the memory. However, only part of [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.172 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.172 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ogtNn-0002da-1F
Subject: Re: [Openipmi-developer] [PATCH 3/3] ipmi: fix memleak when unload
 ipmi driver
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 qi.zheng@linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Oct 07, 2022 at 05:26:17PM +0800, Zhang Yuchen wrote:
> After the IPMI disconnect problem, the memory kept rising and we tried
> to unload the driver to free the memory. However, only part of the
> free memory is recovered after the driver is uninstalled. Using
> ebpf to hook free functions, we find that neither ipmi_user nor
> ipmi_smi_msg is free, only ipmi_recv_msg is free.
> 
> We find that the deliver_smi_err_response call in clean_smi_msgs does
> the destroy processing on each message from the xmit_msg queue without
> checking the return value and free ipmi_smi_msg.
> 
> deliver_smi_err_response is called only at this location. Adding the
> free handling has no effect.
> 
> To verify, try using ebpf to trace the free function.
> 
>   $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc rcv
>       %p\n",retval);} kprobe:free_recv_msg {printf("free recv %p\n",
>       arg0)} kretprobe:ipmi_alloc_smi_msg {printf("alloc smi %p\n",
>         retval);} kprobe:free_smi_msg {printf("free smi  %p\n",arg0)}'
> 
> Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c8a3b208f923..7a7534046b5b 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3710,12 +3710,15 @@ static void deliver_smi_err_response(struct ipmi_smi *intf,
>  				     struct ipmi_smi_msg *msg,
>  				     unsigned char err)
>  {
> +	int rv;
>  	msg->rsp[0] = msg->data[0] | 4;
>  	msg->rsp[1] = msg->data[1];
>  	msg->rsp[2] = err;
>  	msg->rsp_size = 3;
>  	/* It's an error, so it will never requeue, no need to check return. */

The above comment is wrong, but yes, this is correct.  I'll queue this
and remove the comment.

Thanks,

-corey

> -	handle_one_recv_msg(intf, msg);
> +	rv = handle_one_recv_msg(intf, msg);
> +	if (rv == 0)
> +		ipmi_free_smi_msg(msg);
>  }
>  
>  static void cleanup_smi_msgs(struct ipmi_smi *intf)
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

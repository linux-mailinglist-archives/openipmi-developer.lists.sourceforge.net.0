Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 502ED708287
	for <lists+openipmi-developer@lfdr.de>; Thu, 18 May 2023 15:20:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pzdYe-0001GJ-5p;
	Thu, 18 May 2023 13:20:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pzdYd-0001GD-13
 for openipmi-developer@lists.sourceforge.net;
 Thu, 18 May 2023 13:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pBfK8leQXqm0KeXAjPPuHlzdvrWoxdRW6U4exzz64VI=; b=Uhtj5ROcuTHWg3Or3zugY7f6GW
 E39PebutuefcYVOVE0dasTsbHI0YUATFfsUoPS7dTprMtNgwSd0aNw0FM7uuwhfcM5pzxq3WqGwbk
 dfszvW8fPa9SsvDx8DnCpWeuabIsS57m9MGxigWPg0Q0Ro3+XTRWK3ebQXQR1JsyvmGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pBfK8leQXqm0KeXAjPPuHlzdvrWoxdRW6U4exzz64VI=; b=SnrdNKKOv6+r/tApHXB7bJfvCh
 gs3IMZS7BJT8X9LNFzYUXK1BrvQMS+ISleMFcpOCHKVW6tydnP6vlQ8uHG0FrDA1YHWKMgPm3Q30v
 JasVIsx/0U3YTdwzsWtWF0MrZ3qaOwg3QvBY2gC9RTb2rAQDXogmhKIYRngzDvBveDYM=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pzdYY-00CNvL-3c for openipmi-developer@lists.sourceforge.net;
 Thu, 18 May 2023 13:20:38 +0000
Received: by mail-qk1-f179.google.com with SMTP id
 af79cd13be357-759219bed84so108535485a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 18 May 2023 06:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684416028; x=1687008028;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pBfK8leQXqm0KeXAjPPuHlzdvrWoxdRW6U4exzz64VI=;
 b=J/fl/L0DXGsXJm5Vt/LI6tdAlorkNSg3wQxGeGDQkZCUquCJpo8pXVU4Q9/o7PXoD+
 fSwr41RBF63RYDzpYBiHRaSKJBGhXLiVfKDJkrqp5WcnPXvpCeQiSjpgPoPmmJuofAeH
 mEuBNuFP0meh7IjAsFsQYdu7K1DjZOIlO5uXoWs+xQyS6ZlPknUItGYCqdv5CwEcJTkS
 Rwm8fFbhNfiSkorgkY/K+9tNT1rBtc43ZLWlKOJFcFvmuV/Dnowy6pyCg0thYQ52eRET
 ai73GOLnWUkvVTU1WKuphAjSAMpBIDbIwGADyu2d6YgKLdP+Yy+IXtbIs50pkpKx44O+
 kKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684416028; x=1687008028;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=pBfK8leQXqm0KeXAjPPuHlzdvrWoxdRW6U4exzz64VI=;
 b=DBRPWI6hq5kVdIu0HDUjQ+P2jLNCY0kbwOBhuOXtHiwSeQRiXai8crMLs+q5X+VRET
 oLeOAjjkhqHhbnPcoQpQ60rq37ogNx3jic+ctDMH+K3NUnrmbV90s084XNUxmdYKTNBM
 VmJfls1RHP6QSxssDvjETQaWjd69OW5gEKLXsIzSXdFTricN+gNiNgKvx62/UBRVaCA0
 fyEX4k5/3iRs2R8MIIUwQNg5VjCfNkV4WbVijHAK6tytivgKXT1JCBiZ6C55Mv9poBBL
 YcS+O+D5ZGgfRrS8SodOg1IDKJPv1yBaHpKeiemo9K+xIvRmk7rUSKP3XHaLoiEJyJoS
 9Ggg==
X-Gm-Message-State: AC+VfDzQJ9KJKepTLzW/1lpcDxCUZ+g9uee98tDA3+gwnfuOx6KEKHCn
 fzssyQ/I7WFqoy67/fdLMEaregoxdQ==
X-Google-Smtp-Source: ACHHUZ4rpXzSB2pmqfJbcms6JagM/3s4km9cw1ToCY/VdULFWCFDnduovegkcbmKM+uWoo+9LOEKrQ==
X-Received: by 2002:a05:6214:410:b0:5f1:5f73:aed8 with SMTP id
 z16-20020a056214041000b005f15f73aed8mr5150467qvx.20.1684416028024; 
 Thu, 18 May 2023 06:20:28 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 i18-20020a0cf952000000b006238b6bd191sm497563qvo.145.2023.05.18.06.20.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 06:20:27 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9fd5:7d6d:b75c:c88d])
 by serve.minyard.net (Postfix) with ESMTPSA id 01AAD1800B8;
 Thu, 18 May 2023 13:20:26 +0000 (UTC)
Date: Thu, 18 May 2023 08:20:24 -0500
From: Corey Minyard <minyard@acm.org>
To: Zhen Ni <zhen.ni@easystack.cn>
Message-ID: <ZGYmGB44KmFOQVZi@mail.minyard.net>
References: <20230517085412.367022-1-zhen.ni@easystack.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230517085412.367022-1-zhen.ni@easystack.cn>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 17, 2023 at 04:54:12PM +0800, Zhen Ni wrote: >
 Read syscall cannot response to sigals when data_to_read remains at 0 > and
 the while loop cannot break. Fix it. > > Signed-off-by: Zhen Ni < [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pzdYY-00CNvL-3c
Subject: Re: [Openipmi-developer] [PATCH] ipmi_watchdog: Fix read syscall
 not responding to signals during sleep
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, May 17, 2023 at 04:54:12PM +0800, Zhen Ni wrote:
> Read syscall cannot response to sigals when data_to_read remains at 0
> and the while loop cannot break. Fix it.
> 
> Signed-off-by: Zhen Ni <zhen.ni@easystack.cn>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 0d4a8dcacfd4..e7eb3e140444 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -807,13 +807,12 @@ static ssize_t ipmi_read(struct file *file,
>  			spin_unlock_irq(&ipmi_read_lock);
>  			schedule();
>  			spin_lock_irq(&ipmi_read_lock);
> +			if (signal_pending(current)) {
> +				rv = -ERESTARTSYS;
> +				break;
> +			}

This is a bug, but your fix isn't quite correct.  If you do this, then
data_to_read will be set to zero on a signal, and you want to return the
ERESTARTSYS and not clear data_to_read in that case.

Instead of your fix, I have added a "!signal_pending()"  to the while
loop check, which was probably my original intent.

-corey

>  		}
>  		remove_wait_queue(&read_q, &wait);
> -
> -		if (signal_pending(current)) {
> -			rv = -ERESTARTSYS;
> -			goto out;
> -		}
>  	}
>  	data_to_read = 0;
>  
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

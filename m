Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D8CAA985A
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 May 2025 18:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gBYymSQTi+b7wmDRo+BfWVelPBt9abo3QbyXKBKwS4w=; b=Cl+CAXn2Em+/myP6WJJDO+DjJ4
	4PzYBhUqda0juOuuCCgbeFfCUTnTAlk6axNWVVCetMq+xY3YCXDlIN69RJdVQNHDbLizS5oMaMGbb
	4KizaHTQgOpVJWCzNH8xuLcqUPwJumXeNtwDhGFmUlkrftiC4ZLn1DCW5/nXsw+iQamI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uByO3-0003DA-OO;
	Mon, 05 May 2025 16:09:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uByNw-0003Cw-36
 for openipmi-developer@lists.sourceforge.net;
 Mon, 05 May 2025 16:09:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IqEKM/OjnSYzN6ZOnaif2KiyQ/v82RpALfNylkwGH+w=; b=CyU2Pt0OzJ6L1+J0qIIKDkRzd7
 Z415KK2MXusti5OLcHc9s1bHvWTGhN0ShIClzkvo757oiWSFkUx2ms9F8Cyk3ODRULkxq3nLXd4qQ
 xvyYPytgrncIHHwcBUtqfV/O6Yo0Qe+5Y9bE4jBdaSv6Ko4bJFmVrI1d5bhXBmB+O43M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IqEKM/OjnSYzN6ZOnaif2KiyQ/v82RpALfNylkwGH+w=; b=a1rVC7/x++VHnE+zl4XNRWUyOn
 D+hFDX3rt3a51QkeZpTsRYqFT41FtuUI/EcM962GoAvuZM0FMf21fKRg5QoB/GJWN+FlP0XNbsv/L
 bKYxaOvOMEBKSwA2VLwBGIfhlgVMqIwAIPKy2PBlj3NU+TY2BI0/Nu8Lgd9U6OFbewL8=;
Received: from mail-oa1-f43.google.com ([209.85.160.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uByNb-0003PB-D3 for openipmi-developer@lists.sourceforge.net;
 Mon, 05 May 2025 16:09:38 +0000
Received: by mail-oa1-f43.google.com with SMTP id
 586e51a60fabf-2cc57330163so2850898fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 05 May 2025 09:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1746461353; x=1747066153;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IqEKM/OjnSYzN6ZOnaif2KiyQ/v82RpALfNylkwGH+w=;
 b=MYeoLFwDMkRLBpLRIeh1G8fl4J5x8q3jARKEhsMAW0u6ViaPOQ/Iewff/0dC3+Mp2l
 i0U3+FNOxsnZBA+vjmxwYP2rF5tvP6LVdF1ok8kA5qMqOfj9M4CfR/DYD4AruR2s049a
 8E9/f72b11Y0BUzfzlRIRv7cWayFlBNzppvQAq6EjnWBDodzEBPLOlLugch0HE2JpU96
 o53SFMpP1yfZROa+B7ll9xoN6u2KAZkbD2bJJjIOhWQz+IlUmCXLMr1Mz05FG3TrYtC5
 Wmo2BkNS87UX9kcPH4+z/zR9ZwcTLQjYdQPqV8MvvJexII8g4ovqKEMHcppzxtKQs9sL
 +L/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746461353; x=1747066153;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IqEKM/OjnSYzN6ZOnaif2KiyQ/v82RpALfNylkwGH+w=;
 b=gJJ68i8CYiJzvL1GT+nsflV/KeSvLvs1PkuRxkzNfJ+eI7pk0pc8gKLyUozCYH7cto
 n+crLHZYmpchakFsoVMt3gLu10JPELC/Qa5EMsf+iAXrR+nW94ZpK0N8onzTDUP4WE84
 lqmXZ/U02rrw0H1e0K3F0CdojEzUTnJGxjfP2cFLuERsVqCGQ8iV/2wqccNUXA8hNZfz
 mn18z/LT/In+QUumNjhDHUeYnHW7RM3+VNhJStjSujato8HeG1Ph6rvfB8iYny1/InTa
 mTSqYp3SfW/NY5TMO3nQKARcJc3mbSSq95EDxfnvM9VT0srKMftCwuwcEcH6cUP8xWWf
 aQxw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWD4e4n7pbYI3z6w6coJQG46vmGKwQ6srMDrSrZXO3wtQbf4WpZDf0WwhOxidcqoZgQt3jIg0D+xcJayWpTSBe55aA=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yyq9erBnxVjkCgOl0NqFxGFGtGVEPd6LtjCq/O+f+xZ+b/4z3I6
 bVoaZPg2ZoiHBiV2w3f+l8u21Z13hFnDxvUwZMsxD2/gcT2JB4vNc9xthknWVqk=
X-Gm-Gg: ASbGnctupHxj3yVVQbfY38+pK1ehtWNKHvT+FEGUXh9QkW7GlgBo4ebthM5SAb2cURo
 RePsX9lF8XjeFoTV+9qVbBXeuQBvsYaNh016+qHVHxhLPPH36rqQxJXe+y1j5wOdo+rwnzt+WT2
 ljAvVqBgkpFz4d6q8WJAHNH87nqaRYUNWy0FuESIRRDXtE4h4jtm4xAAv/pjiuwGwUcN1iyYCCj
 VQ1ADbapuCA6BrOHGvL4+HLVIj/KDL25u9CN0zuhjWxJ0HWmItjN22lo9PlktRzCuMwaYywsSo9
 3PuMewRbgSx0VcpYOAAJ2doWX6WvHDbd5XejMjPEup7W
X-Google-Smtp-Source: AGHT+IGJHBe1tE73+gCUVJrtdihmneKyQqRpzUdV8C0iHKB/EZurcAQuVHRzs5jeBKVkgUEGi5SiuA==
X-Received: by 2002:a05:6870:8990:b0:2d5:246d:4b67 with SMTP id
 586e51a60fabf-2dab331fea1mr7891413fac.24.1746461353628; 
 Mon, 05 May 2025 09:09:13 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ec53:8290:86a1:aa7c])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-2daa0e59e30sm2058124fac.3.2025.05.05.09.09.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 May 2025 09:09:12 -0700 (PDT)
Date: Mon, 5 May 2025 11:09:07 -0500
From: Corey Minyard <corey@minyard.net>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <aBjioyOkty40OVd5@mail.minyard.net>
References: <aBjMZ8RYrOt6NOgi@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aBjMZ8RYrOt6NOgi@stanley.mountain>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, May 05, 2025 at 05:34:15PM +0300,
 Dan Carpenter wrote:
 > The "intf" list iterator is an invalid pointer if the correct >
 "intf->intf_num"
 is not found. Calling atomic_dec(&intf->nr_users) on > [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.43 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.43 listed in bl.score.senderscore.com]
X-Headers-End: 1uByNb-0003PB-D3
Subject: Re: [Openipmi-developer] [PATCH] ipmi:msghandler: Fix potential
 memory corruption in ipmi_create_user()
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, May 05, 2025 at 05:34:15PM +0300, Dan Carpenter wrote:
> The "intf" list iterator is an invalid pointer if the correct
> "intf->intf_num" is not found.  Calling atomic_dec(&intf->nr_users) on
> and invalid pointer will lead to memory corruption.
> 
> We don't really need to call atomic_dec() if we haven't called
> atomic_add_return() so update the if (intf->in_shutdown) path as well.

Thanks, this is in my tree now.

-corey

> 
> Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 8b2c3fca9c4c..064944ae9fdc 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -1240,12 +1240,12 @@ int ipmi_create_user(unsigned int          if_num,
>  	}
>  	/* Not found, return an error */
>  	rv = -EINVAL;
> -	goto out_kfree;
> +	goto out_unlock;
>  
>   found:
>  	if (intf->in_shutdown) {
>  		rv = -ENODEV;
> -		goto out_kfree;
> +		goto out_unlock;
>  	}
>  
>  	if (atomic_add_return(1, &intf->nr_users) > max_users) {
> @@ -1293,6 +1293,7 @@ int ipmi_create_user(unsigned int          if_num,
>  	} else {
>  		*user = new_user;
>  	}
> +out_unlock:
>  	mutex_unlock(&ipmi_interfaces_mutex);
>  	return rv;
>  }
> -- 
> 2.47.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

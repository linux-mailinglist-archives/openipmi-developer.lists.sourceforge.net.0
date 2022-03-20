Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 940B84E1D33
	for <lists+openipmi-developer@lfdr.de>; Sun, 20 Mar 2022 18:38:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nVzVD-0002U7-8V; Sun, 20 Mar 2022 17:38:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nVzVB-0002Tn-2b
 for openipmi-developer@lists.sourceforge.net; Sun, 20 Mar 2022 17:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UpAsH3HNGYUb6pJqoGNbhy4ESgXn7LYmalYBo847NcU=; b=fP2inpf220/H0TVkSyjJqXWEFv
 XRydy7pAmnpyB+qTNVGO00JhC1lh1Xg4IdCp/LrXTDG5wr78PiS/74Qv5OEUPTSFhnAuNiwumq6Zr
 2x7K2tPGcOifcxKpKX4Ijy9i0wH5VLTvOp1G428+arFqV1eAxDzOF0KxJFrk7Y6bEYQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UpAsH3HNGYUb6pJqoGNbhy4ESgXn7LYmalYBo847NcU=; b=YRoTj0GP+5VJOSiP99I0kQ2Dui
 5+7Bp2O1SchwR3p6JEYRHN1WG/lL+8esHvBOuGGEtTvNRmf/fAs7ERHrsfuxmX3G4L1fTfiXP6j6M
 w+85cnM46RmY6sM3J85vzenl9lacfiyb/dcAZcVhtB7Q9064tmpnA0jNz5cxBZfiT2dQ=;
Received: from mail-qv1-f53.google.com ([209.85.219.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nVzV5-0057Tn-Vg
 for openipmi-developer@lists.sourceforge.net; Sun, 20 Mar 2022 17:37:59 +0000
Received: by mail-qv1-f53.google.com with SMTP id jo24so2580158qvb.5
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 20 Mar 2022 10:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=UpAsH3HNGYUb6pJqoGNbhy4ESgXn7LYmalYBo847NcU=;
 b=JGkyMerAd2g6F8muIKP6vKHK0v40lHv193s/7K77f/6/3RSE90D42rwWgO9T9yN08/
 IEGiL+f+vNycabezRrx40IBJIx1xq8R54iLvVMqzlKFpsY8GlAbvrRSOUofIx1zradjb
 Gw4nCwaxwZvwZeTXmQSoqf4odwfcLQGJWTL7OG1D4zejn+ChGrXQn0dmkyrKGrg/8qjv
 4dNDH3S48w2AzRA0w9PznJM7yBFyVbWLbig9q7xomTEp8XQBUfN4lcB8n8SIHhYPBcwt
 8ENRpNGp7OQsVot7pDepfZvt96m1Jx64kOrW1ISj2fTkTuOArAwwQvkYlTy9NZQoXy7Q
 p7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=UpAsH3HNGYUb6pJqoGNbhy4ESgXn7LYmalYBo847NcU=;
 b=vBSdwjrHceLlOkSA/m5pBEK39WAl3FRlOQSliTRooRRjhG2WrSXixKCyH6TWf3ny/G
 gJxzGbOjmeAS8FyQhPJ6i0aAG0oILyHNKQ1JW2TiJXw8F5otp+DFLbd9lajZrsFwcxyt
 XVF7htyzxSbARxH0xlxTixBjtutAdE7TbMlQpoZPPIQ+jYAcbo8XQc7v6tK18qjsJn4y
 6VLG1C2sM0IHE8Ihr/paHbpI6XIv/wPJTF00y9ivHZ6UxeKs5W/P4owFyBPtdaPNv9mx
 rPHOJTUWNsgrLp1j8R1e25Wj29ChPhhQkE4e5qwEjZWLJwbSdiEkYwwH99hhel/n8Mxt
 STog==
X-Gm-Message-State: AOAM5313mL8viuSlUQY/iB2waQ8VPa+y00TemQFFM1Z+EHwJus6eYBtX
 Df7qDzh30BKFoU1faTdtEA==
X-Google-Smtp-Source: ABdhPJwh8QvADQKYx6DPR/dSdi1tzGg9wqeQVW1DOYXcHRPN0dHNgQHiyPZiuCqDYB1s0/59ZXi2HQ==
X-Received: by 2002:a05:6214:c2a:b0:440:f702:2195 with SMTP id
 a10-20020a0562140c2a00b00440f7022195mr10715396qvd.37.1647797869914; 
 Sun, 20 Mar 2022 10:37:49 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 n8-20020ac85a08000000b002e06aa02021sm10151220qta.49.2022.03.20.10.37.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Mar 2022 10:37:49 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:299c:3142:517:f2da])
 by serve.minyard.net (Postfix) with ESMTPSA id 58F3F180004;
 Sun, 20 Mar 2022 17:37:48 +0000 (UTC)
Date: Sun, 20 Mar 2022 12:37:47 -0500
From: Corey Minyard <minyard@acm.org>
To: trix@redhat.com
Message-ID: <20220320173747.GH3457@minyard.net>
References: <20220320135954.2258545-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220320135954.2258545-1-trix@redhat.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Mar 20, 2022 at 06:59:54AM -0700, trix@redhat.com
 wrote: > From: Tom Rix <trix@redhat.com> > > Clang static analysis reports
 this issue > ipmi_ssif.c:1731:3: warning: 4th function call > argum [...]
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.53 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nVzV5-0057Tn-Vg
Subject: Re: [Openipmi-developer] [PATCH] ipmi: initialize len variable
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
Cc: nathan@kernel.org, openipmi-developer@lists.sourceforge.net,
 llvm@lists.linux.dev, ndesaulniers@google.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Mar 20, 2022 at 06:59:54AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> Clang static analysis reports this issue
> ipmi_ssif.c:1731:3: warning: 4th function call
>   argument is an uninitialized value
>   dev_info(&ssif_info->client->dev,
>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> The 4th parameter is the 'len' variable.
> len is only set by a successful call to do_cmd().
> Initialize to len 0.

Thanks, it's queued for next release..

-corey

> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index ba779f1abb5b2..f199cc1948446 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1625,7 +1625,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  	unsigned char     *resp;
>  	struct ssif_info   *ssif_info;
>  	int               rv = 0;
> -	int               len;
> +	int               len = 0;
>  	int               i;
>  	u8		  slave_addr = 0;
>  	struct ssif_addr_info *addr_info = NULL;
> -- 
> 2.26.3
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

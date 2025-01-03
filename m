Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A16A5A0033A
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Jan 2025 04:47:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tTYeg-0002UY-68;
	Fri, 03 Jan 2025 03:47:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tTYee-0002UR-Rh
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 03:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5rnDHCeVOhcASBhii6Cfw8DGHqfc5aMSozqh3rmlpCE=; b=cl/7XSCsqzR87oppkFhOgVVBRx
 bCP266M/SVfg0w2kjpXhPjYaWk8PXuIfZNBabL0iz56Jg9xOFSOLd+cI/PRY/+qdMMgvvZDSKBnZm
 wJIbyWgkz3KDL9g/I553meXOLWdNjh7T1HqaFb3YBjkJQaU3c81tSmhFI89wm8mm5rto=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5rnDHCeVOhcASBhii6Cfw8DGHqfc5aMSozqh3rmlpCE=; b=IVrAObcr1l+DxtO4+vveO5JD3g
 5uwEmbYLDH+DH3sXXoud0HFwYXqobUtU5fCsEAnl1VEzWyi4ZMccd965kpFGrZqd9qXvlGF4xpnKI
 Qn/GbkhXlWec2qSXJcoo1WSo15OKQWXuWQrnYXJZezNLpTcYH6vHvbRQfooJYYKH+cZU=;
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tTYed-00033v-LK for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 03:47:20 +0000
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-21675fd60feso216847075ad.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Jan 2025 19:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1735876029; x=1736480829;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5rnDHCeVOhcASBhii6Cfw8DGHqfc5aMSozqh3rmlpCE=;
 b=BLTps9K2rkspEBf4fE3+FPt/GHyBjzC7Qy9pSTu1q1Mh+R17roKx2WBtGKGpNE/eq+
 PgQHHmvLz15bPEPBqyK//atLB9PKf55uNxTlvnBHJUROKiiY+Ui9/ONUQLEe5PZetpN3
 bwtlDKfem7d6ToacQTsj3lzljcQOhp2IPsqEYQqFXKKmXXABe3x98i0Suh51ZAa+kgVj
 VdM8SEEuwUFBj7jYTKkbNkyKNRriIdaq9sShIzwvcLVeqlHv57rSo5qg8FnAgvr9Zj4h
 9ZU2IVugQxrvYkdDSHMBKCY9Duf3bnIhoD86RDh/9vzHkh3RUrE7KbhqBYXIixtaCjOv
 7imQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735876029; x=1736480829;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5rnDHCeVOhcASBhii6Cfw8DGHqfc5aMSozqh3rmlpCE=;
 b=MYsVGsZaXnx3icM4Hitnf2FQTFGJiO83rzXJvkwGWp50xI1LME47w/vJkXb4MR8SP3
 cO53KV3SczLvC1gwFwnxnzVMGtKzsdX6emDM8XIUF8BACVwD4BLqXjAjb7M1L32qFKz1
 vjDrlk5wlJb0bM3MSSPHWWSyIuHk3YIMFcojKYSi2PepjpeZPukC2zRPNk5iFum0XOKh
 5EXWkfIdmgdVfi+6X75GlqHxiLglndwuq+T+U8bzqrXURVQ9c7NB/QZDl5z+CGuBBa0G
 sERI6HTTjKFbILVRbQyDkVYkfwgJOpLz2aHUTqHy4rIUYIHc+IO/utiYETd0XGiiSYVI
 3Wug==
X-Forwarded-Encrypted: i=1;
 AJvYcCUj6qMV1ZcqZAhyt3gfhjFEJPMYJhSoKhAH01ZaaHLJCN2khjvDDgiPMHO3K6nDIl0UVoGAXLMe1IaznfThZjXBgWo=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwEZPG4bXcUzH/tEiMNwDFlxTu/0KyxZF/OuDldIVUrxvqkZeix
 2+HMWVG330+umpQq49FOGh7Pz4XYrjL6WsumHWL+AxSc2hVKLXmt6jlh0OGvlY9sN6PHocFNGXq
 hnvk=
X-Gm-Gg: ASbGnctOIlm0x7rYwEySaXarC25VSLHg/dbwE0eSl3N/X0L1dmFmpdIAYua8qVGHg/H
 W7Cgq5woyMAKhbY9kbmtoB7y1hz3qBJnPX0mkGFCyTEQFtPLoTCbQgnIkFVgpro/6hACAONeWVx
 z8Z2Uol/Djj9NyBR2hUXE3XjctNlAMgdL3o0dfHiLx5j8PLXgCamowZl25CwSMJmYY2eMB3UWwm
 Ye56JRFoMWnpWoy6Or45hOsTXT5NqxxBF0uEMmxOdJSr+wCBKfyDDmy52UN
X-Google-Smtp-Source: AGHT+IEyXSjph+/pYcsKC+/1wwAYZ4l/FEii+50iKcIiE37HIWxy0McfM5MaXdZlXTOORMrzB6TBkA==
X-Received: by 2002:a05:6870:f615:b0:29e:671b:6019 with SMTP id
 586e51a60fabf-2a7fb4c9d10mr27130592fac.31.1735874415134; 
 Thu, 02 Jan 2025 19:20:15 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:81ab:b2d6:d879:cada])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-2a7d7453f76sm9533454fac.9.2025.01.02.19.20.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2025 19:20:13 -0800 (PST)
Date: Thu, 2 Jan 2025 21:20:08 -0600
From: Corey Minyard <corey@minyard.net>
To: Cosmo Chou <chou.cosmo@gmail.com>
Message-ID: <Z3dXaMlZ1zTt5HHd@mail.minyard.net>
References: <20250101165431.2113407-1-chou.cosmo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250101165431.2113407-1-chou.cosmo@gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 02, 2025 at 12:54:31AM +0800, Cosmo Chou wrote:
 > Move smbus_cmd assignment to the end of process_smbus_cmd() to ensure >
 the new command is not lost when complete_response() is triggered. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.181 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.181 listed in sa-accredit.habeas.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.181 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tTYed-00033v-LK
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Move smbus_cmd
 assignment after cleanup
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
Cc: minyard@acm.org, potin.lai@quantatw.com, linux-kernel@vger.kernel.org,
 cosmo.chou@quantatw.com, quan@os.amperecomputing.com,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jan 02, 2025 at 12:54:31AM +0800, Cosmo Chou wrote:
> Move smbus_cmd assignment to the end of process_smbus_cmd() to ensure
> the new command is not lost when complete_response() is triggered.

Ok, I see, patch is applied.  Thank you.

Quan, I assume this is ok.  Please double-check it for me.

-corey

> 
> Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
> Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
> ---
>  drivers/char/ipmi/ssif_bmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index a14fafc583d4..7a4f52987a7d 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -579,7 +579,6 @@ static void process_request_part(struct ssif_bmc_ctx *ssif_bmc)
>  static void process_smbus_cmd(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
>  {
>  	/* SMBUS command can vary (single or multi-part) */
> -	ssif_bmc->part_buf.smbus_cmd = *val;
>  	ssif_bmc->msg_idx = 1;
>  	memset(&ssif_bmc->part_buf.payload[0], 0, MAX_PAYLOAD_PER_TRANSACTION);
>  
> @@ -596,6 +595,7 @@ static void process_smbus_cmd(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
>  		if (ssif_bmc->aborting)
>  			ssif_bmc->aborting = false;
>  	}
> +	ssif_bmc->part_buf.smbus_cmd = *val;
>  }
>  
>  static void on_read_requested_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

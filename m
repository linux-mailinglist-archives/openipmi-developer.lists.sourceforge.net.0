Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EC8A009B3
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Jan 2025 14:02:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tThJf-0004z3-IO;
	Fri, 03 Jan 2025 13:02:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tThJb-0004yr-By
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 13:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kwslepnGSbcUTKLuxRUjLV9/n9Tgqc36suysjk6sk7w=; b=RrDm9W8YXXlz+RPe6t/cc5bsfy
 /hcatRSImha78Sax/iZrO95WwQWcjDMmNT4f+VF8qeYPAIVmG0aGabBLubgkSWj4VCfYtHKZpePGs
 nCDrB42bcSEpwRETYyPJtGxhcPXV8UZkFaE68RllxLyYGx2NfTCmIbi5CWa5BKPun/rg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kwslepnGSbcUTKLuxRUjLV9/n9Tgqc36suysjk6sk7w=; b=feLvM7CFNex6ol0GkX3OU7JIiC
 EoA/qWaDYNOCcYHpEliZIkcvm7X5XVqqYuz0CA0q0eIGwAsDIDjzuUMDkzpsQy9+F2xu0Fp6Cq+sU
 PYVGid0s+3H3X9FKluWuu6W+Yhf2RQnTcD5VMZdhN24Y7cjfMowvHe/SmkMPVJwJ/goo=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tThJZ-0008HY-W1 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 13:02:10 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 46e09a7af769-71e181fb288so7484851a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Jan 2025 05:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1735909324; x=1736514124;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kwslepnGSbcUTKLuxRUjLV9/n9Tgqc36suysjk6sk7w=;
 b=fhCrGzX2rTLf64WdGKASPDVAmgZ83cUhsR7X3Y5m/eC95bHKnS5U2giIDVZg7z6OVj
 YWdMZ0Mte7COpneJ5JxsFycg+z3v+Nqzv12btiSUBN+B/R+g1DK6T8z0T7b7LtsdbQqm
 h5HpX/wP6DigekJspysBt/COD7lDIAgDo3NrrXFb8Gew/3Er5M30Us1/Qm+L9Lp6GIQp
 lWXPY4y14eoyklhgmJF3QmX8D6GmhpS/3V39rw+adTRk1qqX4cO4hPuyUDtNhHlg5f35
 xkmEWUH6o7DOlnrYj/OJiT9J85Ft84aItm6URx+4c3GA6ywq+vT3zoM/GhSkPAxYl3Ln
 HqVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735909324; x=1736514124;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kwslepnGSbcUTKLuxRUjLV9/n9Tgqc36suysjk6sk7w=;
 b=ahCtD7NgwBBnHZzlCuQTMQNn6Pamw5soZr4xWUGMzcXCQrsbopFP67VD/FS232TpMe
 3FFsUo3GDSqCl/aAKDGsC2fAPZd+vKLaUO7CO7zS8HSj1Vx60IIN2Oo5N4TqhQoc/qDu
 buZT1oyRG3WCuKJ6BGjwoClW2mTCqw+9uRxDCAhDpz6SdouO+UxfBLFKVSvUEvV/shj7
 WncyqqoF7l9iMvPrx8rTn1DX6nhD90L23JalPuwLJ7C3mdb2vKMkUVkQYrzg2sExWmOA
 znhLD2xnLlczWzEVDgItgbFqexXx5TM8DUjlPxTjk0lZ2e9NfUp0Mccu9647MdPJREVD
 O67A==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3h0XOt4E6TD7YHStF89ALT76z0wdqdbZj6SKjjQpGdWGtHzW2C2FEJTPxtb1GCTywPlICvrGZZ4R42bqOGopg81Y=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyhHyKgNJlcHqnUCCAzrxu1MHGN0+ymgjB5MfaR2an3EQkSWB4B
 6td6kWgVw+PLStnv1vUqwLfQ28LZYVddONWeDXpybdxQBAXA/QheTBtOSzMR+2E=
X-Gm-Gg: ASbGncs57u/iTSbIaOUXLQVG7PFJFT4C/YgujZ6O2CPoWdp5VblYg+iSOdsdI5241bm
 rf5WcWwVbtMS9sDTexNakh46LxUwTKJJ/hLnTQA+JKDr4B7M2upjeu78gNBvCG45pLFC3K2Jvx1
 vc51Ma4/0dmMxiuXANHHcW+c3gJhzwvWbnnXob6MUJHjTDUQwcflgXI6O3Ji+0aIHw0sQOMku5m
 lCcs6OcRb2/OPJ2OJb4TXBYEkRcamM8otigSH1oJzaLAvsNWwlPrPmXmU3J
X-Google-Smtp-Source: AGHT+IFqSJg1bPoYXPE1KKsn0KYetjUPM+I0u/NVnIIThCGd6JpnoHvogaJhfdTx5yTrKznPRCuY5g==
X-Received: by 2002:a05:6830:903:b0:717:f666:9559 with SMTP id
 46e09a7af769-720ff6c837fmr25104369a34.9.1735909324195; 
 Fri, 03 Jan 2025 05:02:04 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:81ab:b2d6:d879:cada])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-71fc97dca80sm7991059a34.37.2025.01.03.05.02.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2025 05:02:02 -0800 (PST)
Date: Fri, 3 Jan 2025 07:01:57 -0600
From: Corey Minyard <corey@minyard.net>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <Z3ffxfF6eEtvqOxx@mail.minyard.net>
References: <20250101165431.2113407-1-chou.cosmo@gmail.com>
 <c92cab21-ca41-4f34-b507-e773c463d82f@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c92cab21-ca41-4f34-b507-e773c463d82f@os.amperecomputing.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 03, 2025 at 10:44:46AM +0700, Quan Nguyen wrote:
 > > > On 01/01/2025 23:54, Cosmo Chou wrote: > > Move smbus_cmd assignment
 to the end of process_smbus_cmd() to ensure > > the new command [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.45 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.45 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tThJZ-0008HY-W1
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
Cc: minyard@acm.org, Cosmo Chou <chou.cosmo@gmail.com>, potin.lai@quantatw.com,
 linux-kernel@vger.kernel.org, cosmo.chou@quantatw.com,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jan 03, 2025 at 10:44:46AM +0700, Quan Nguyen wrote:
> 
> 
> On 01/01/2025 23:54, Cosmo Chou wrote:
> > Move smbus_cmd assignment to the end of process_smbus_cmd() to ensure
> > the new command is not lost when complete_response() is triggered.
> > 
> 
> Thanks Cosmo for the catch.
> 
> And, IMHO, the root cause is the memset() on part buffer called in
> complete_response() is not quite correct. In the current implementation, the
> complete_response() should only be called when the READ is completed, ie:
> only on I2C_SLAVE_STOP of READ transaction, otherwise all the info of
> current on-going request will be mistakenly cleared as in this case.
> 
> This patch is good and I wonder if we can make this a bit further as below?

Yes, this is probably more future proof.

Can you send me a formal patch, with a "Found-by:" for Cosmo?  I'll
replace Cosmo's patch.

Thanks,

-corey

> 
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index a14fafc583d4..310f17dd9511 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -292,7 +292,6 @@ static void complete_response(struct ssif_bmc_ctx
> *ssif_bmc)
>         ssif_bmc->nbytes_processed = 0;
>         ssif_bmc->remain_len = 0;
>         ssif_bmc->busy = false;
> -       memset(&ssif_bmc->part_buf, 0, sizeof(struct ssif_part_buffer));
>         wake_up_all(&ssif_bmc->wait_queue);
>  }
> 
> @@ -744,9 +743,11 @@ static void on_stop_event(struct ssif_bmc_ctx
> *ssif_bmc, u8 *val)
>                         ssif_bmc->aborting = true;
>                 }
>         } else if (ssif_bmc->state == SSIF_RES_SENDING) {
> -               if (ssif_bmc->is_singlepart_read || ssif_bmc->block_num ==
> 0xFF)
> +               if (ssif_bmc->is_singlepart_read || ssif_bmc->block_num ==
> 0xFF) {
> +                       memset(&ssif_bmc->part_buf, 0, sizeof(struct
> ssif_part_buffer));
>                         /* Invalidate response buffer to denote it is sent
> */
>                         complete_response(ssif_bmc);
> +               }
>                 ssif_bmc->state = SSIF_READY;
>         }
> 
> Thanks and Happy New Year.
> - Quan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

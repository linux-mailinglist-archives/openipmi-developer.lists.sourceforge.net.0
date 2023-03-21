Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B53E6C3506
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Mar 2023 16:05:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pedXj-0000or-T4;
	Tue, 21 Mar 2023 15:04:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jgg@ziepe.ca>) id 1pedXi-0000oe-I6
 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Mar 2023 15:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PE0Q2urSrQgTvUZSFNMrQiYswRteUmKjVjKK7YyvjOs=; b=FORFmVNsGuMMwcWx2yK65lH7cN
 zNL/63c6LJIm6YJL1XaP9H7f/9C0GhQtfAsVENZla1uPQX/jP4AC6UNU8/6znHkGCwn1NuAZUvZ35
 cqwxnxa1NGVvqv2gMZPyrLrHMuKmVwrXF5KipnY73bv+Z3MhXV+p/aqaXugquT2IzAQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PE0Q2urSrQgTvUZSFNMrQiYswRteUmKjVjKK7YyvjOs=; b=LQCDnIk0EA/sZFI0/8Gha6O1ZN
 OozFn2ZUTj1jyr+R3lgvch5HGh1vRDl5sLfcg1c2iMUNf4TaPpqUHRiG0NNGOUR51TYoAYq2d439K
 OEDf4NswBsw6USnuSI5IpFho3fJ+WAntpPxQoCuEPcrPHwhT4duv/pdqJ7RPsVgmbAGs=;
Received: from mail-oa1-f44.google.com ([209.85.160.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pedXd-00Fdut-6I for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Mar 2023 15:04:54 +0000
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-17786581fe1so16488624fac.10
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 21 Mar 2023 08:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ziepe.ca; s=google; t=1679411083;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PE0Q2urSrQgTvUZSFNMrQiYswRteUmKjVjKK7YyvjOs=;
 b=Dxk27WEaSb1pOVdSAW5AP+eO0B0p4OaDFScNGBZpXptvEMAwSB8VP61loONUWHq5bn
 Xonnhpi+LDDIAAHcH0+2jBaz6VGHL4pv8hvWNuB09Zs8lIy7EHMIUoYhA9ukKJ70pLYw
 5wHRF/SGU2L5SYCmYNOvu+ox3zrxlArPxjs+jSiQ+djkecacD4opwTi/owSZgvq+XLhs
 rgWnTDa/U6dKsbMqcbIr14ZzBizu1fGh0hsbNav+R+yNvvww1bxheJVotHR73W0685pm
 b8+Y8On/f5J1cKoRjLvMRg0QSKMl4gkII4sXgP2d1rdeNpuDtfJjgq+JSgTl+jlgbA5N
 oy0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679411083;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PE0Q2urSrQgTvUZSFNMrQiYswRteUmKjVjKK7YyvjOs=;
 b=SZBF2YwKdBF1YJ/FF7n+1xSGlNwd/uEj3Ye57rLjJxHve0gYEa1uGNSF9QBY06ygEJ
 kNP27Oyxc4pRinPZiBzBjtZcAQ00Kx+7JdnZo7GzDShII1vievWJYG3GXAEomcfqtdfM
 W8drsUgXVzycdbZIVIN1msyOrBUqI0TBlqUcAeact+XyAOcaRncfVtXS5PfIZ3RQThx0
 bSwG3mwFlYqoaVk98K9Ra/bLV59gWsw+4aji54ZzU3Ij8JvL2GZWeoSZRyCIPpkHMx86
 RlIpdvj5CULzV3Uwgzaimv1JPqp8YNhdlzvf+BlrYkCz8IzjuMGS7zIHF/NVS24ZXi8a
 5ggA==
X-Gm-Message-State: AAQBX9fdEMtdewR6vZYC0AdUbUCGT50MIHV4uYyiSbZADGuZ60De0Iqp
 Pu5jxnvY80ey9ITH9qijIaIiqjI79P+GwbgPI4A=
X-Google-Smtp-Source: AK7set9R/JiYTa+wywUxBgEMSGSbgZkcQlBT/C6J1sAycNW5wTVKmIe6cUHx5pgx1Hsf4sp+7n0u1A==
X-Received: by 2002:a05:622a:20e:b0:3bf:d7f8:4f85 with SMTP id
 b14-20020a05622a020e00b003bfd7f84f85mr161977qtx.12.1679409183856; 
 Tue, 21 Mar 2023 07:33:03 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.25.194]) by smtp.gmail.com with ESMTPSA id
 i18-20020ac84f52000000b003d621964626sm8484287qtw.8.2023.03.21.07.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Mar 2023 07:33:03 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
 (envelope-from <jgg@ziepe.ca>) id 1ped2s-000VQL-PI;
 Tue, 21 Mar 2023 11:33:02 -0300
Date: Tue, 21 Mar 2023 11:33:02 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Niklas Schnelle <schnelle@linux.ibm.com>
Message-ID: <ZBnAHoPy4SiaD1Xu@ziepe.ca>
References: <20230314121216.413434-1-schnelle@linux.ibm.com>
 <20230314121216.413434-4-schnelle@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230314121216.413434-4-schnelle@linux.ibm.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 14, 2023 at 01:11:41PM +0100, Niklas Schnelle
 wrote: > diff --git a/drivers/char/tpm/tpm_infineon.c
 b/drivers/char/tpm/tpm_infineon.c
 > index 9c924a1440a9..2d2ae37153ba 100644 > --- a/driv [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.44 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pedXd-00Fdut-6I
Subject: Re: [Openipmi-developer] [PATCH v3 03/38] char: impi,
 tpm: depend on HAS_IOPORT
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-integrity@vger.kernel.org,
 Jarkko Sakkinen <jarkko@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Peter Huewe <peterhuewe@gmx.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Mar 14, 2023 at 01:11:41PM +0100, Niklas Schnelle wrote:
> diff --git a/drivers/char/tpm/tpm_infineon.c b/drivers/char/tpm/tpm_infineon.c
> index 9c924a1440a9..2d2ae37153ba 100644
> --- a/drivers/char/tpm/tpm_infineon.c
> +++ b/drivers/char/tpm/tpm_infineon.c
> @@ -51,34 +51,40 @@ static struct tpm_inf_dev tpm_dev;
>  
>  static inline void tpm_data_out(unsigned char data, unsigned char offset)
>  {
> +#ifdef CONFIG_HAS_IOPORT
>  	if (tpm_dev.iotype == TPM_INF_IO_PORT)
>  		outb(data, tpm_dev.data_regs + offset);

You should ifdef away TPM_INF_IO_PORT as well

Jason


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84761CF8F8B
	for <lists+openipmi-developer@lfdr.de>; Tue, 06 Jan 2026 16:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fDzbX0NO9wJ8AtV5012LMsGGB1Sp2e/6gdMDq5fEvDM=; b=SN69Q/KSdUUNtHYhrq5C3dz/OB
	5dxFlWPVv9D8eNUIOqWivNhaC5rGRkRj0HSivlsS/rxdq6TJeYxlevJuJAqX4RWV1wh+6g6amYqTC
	HLBA9RLNz0XtkUGE66ePb7NvSzeKJZ84VlvfXxLGVOOZshdBZz1u6SbpTP6/Ec2zsUZ0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vd8ec-00005h-M1;
	Tue, 06 Jan 2026 15:07:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vd8ea-00005U-MB
 for openipmi-developer@lists.sourceforge.net;
 Tue, 06 Jan 2026 15:07:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YW9wYF3cDrO2vSJaEq7tb88WUTxmEiZRD/LoOiUa6ss=; b=NvPlYv1R/zCeYeaq/guTNf8AEj
 gSrfFif1AdHfPukfWtnA2CEfXq97GZlGpHz9MIootc5q4uSEUXWTPF7sk3KDQucakU/TQTQXvTVZE
 3iEBn6vNxZ5LVApwSnhiIaLln+agWO42dcPcEqlrwYjQzgFrQSd0cQ/aqomOKhQqCTIE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YW9wYF3cDrO2vSJaEq7tb88WUTxmEiZRD/LoOiUa6ss=; b=aHbUDuUbmpL6RZ8i8WyDxtsH+s
 15Xao90X31ZkCzdlmv2T8PygJ3w5KgtKblczs4B/VfS3bi82UHIk3caFlP3IA15bESGX5ukvEROF0
 DJgj5mcuW27hOjDLXxUhvQm79nuJ54rXsaqCtJJmA9Ql2onmrcBeohg7+b0hNIs1CnPg=;
Received: from mail-oa1-f48.google.com ([209.85.160.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vd8ea-0003Tp-7k for openipmi-developer@lists.sourceforge.net;
 Tue, 06 Jan 2026 15:07:24 +0000
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-3ec46e3c65bso783864fac.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Jan 2026 07:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1767712038; x=1768316838; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YW9wYF3cDrO2vSJaEq7tb88WUTxmEiZRD/LoOiUa6ss=;
 b=DI7H4TnGzJXeys7VSrfvSBoMLEIaCc+t4rOVuE90K7WrnPf3dnzX1DkMeSrEirVaok
 xZvR3KerqX64+X1f8rZJBa7tOKqDPyyBbl4zrJfM1tpgoTTbNBaunl99ZhCPLDZ6F0e8
 PTDEtueXTuzUxynFxxkZn54L/zZXPvmQIQ21nd/390FMgX/3YgP3+c28gEZHnLkxhc+X
 wL485jNJFZcVAAQtU/6kT7a+lSvGcrbJHGWVm6hvkJFrYW1CXtQeFaIWXMEmma/ZLqt2
 zVS15sOhv2aSsYdcxT/XqCvIQQK4axUI/jng7zsESnf5fvcAgFWxozIXkRR+RykZUscj
 LPkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767712038; x=1768316838;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=YW9wYF3cDrO2vSJaEq7tb88WUTxmEiZRD/LoOiUa6ss=;
 b=C3lzgBFAI7AfgVc9J0CZGiMlQyw8xX2/UssDBwPjhCMO4OFnJfIzIIGISI4y/oePJA
 R8Ev3jaqhnSxFwsHYncRteN1Y6sZQQZmTE0JQvL+hQxRWDXhTyzIUG0+tWvbVBv3deQx
 BXgmJXOIMOPEWjNWf40MkqySrwLhrwlRkUCTnOqIGklTFtPFuzxjT6YcGvWx8Eh7q2l7
 vptwQ5LRAKS0Ljta4jeny5gdHzuvbT0q+jCOcfta9Rqigll2lDQQIgp7TJQrNuq2K5Aw
 q6hcyLu3A7sVJNZq1tZJWXH5vnFgBXstmxYmD7UVmJqF/ElKR0t+yJdsItH65d88bttb
 pheA==
X-Gm-Message-State: AOJu0Yz9If3rALSBhrMjW34ttdT4w7CM+mY1Qa86W3eXJ83w28HMqA9T
 FYaWEeFC+0lu0/0yyq/8IXN6QEF+doOAS1syhmfUW2KOE8mFOtyM/STNl7cb5immhI6lGYvIDIM
 d86i1d18=
X-Gm-Gg: AY/fxX4lraRSboF9b02wCsMQzckz5GMDisA3lq+PvB7i7/okBIl6OrLfp2bHHWSMnPH
 F4ht1BwwgLWF0anGJ4eD2JmlEyuaeExCdtu6yt80pdUk08cleflxMaiSYSSzRUxVFxnGAr5CJMp
 NecPHMo/eoN0jU08Oa6IGR5fhHlLtJQcvKVorC7u+Bu0SigWT26S8srB+lZdvXsPFLiab/C/9gC
 Lq7RkKIke9vlrDTN0gNcQMcPh8hRBijrimcmuuTyWH5pVCbrt8GypuUHlAUQNLP9P3QpM2RqaBs
 WXE9p90Bt5zt63a/+poggtY14R0t1JnlkEwGyA2or18V/vobaHGSBFmS+AJKVbq7K17NEsGDsAg
 +5ribO6LbHe4oSJdZ1xW0Fp3Zn3jYY4sJJ/jHN/VcDfDNkXaUMeMcN7OeF5IVYuEM/zAOl7vocO
 b25Tr+L7ndr52GhQ==
X-Google-Smtp-Source: AGHT+IHjqV+f8YbxUwUJopSmkE1jYOGcyMeZ6XvsXcOSv+004mJ05EdvaGQNKbDs2na7G8SyNv5EJg==
X-Received: by 2002:a05:6820:238a:b0:65d:141d:9e0b with SMTP id
 006d021491bc7-65f47a047d5mr1724105eaf.41.1767711541500; 
 Tue, 06 Jan 2026 06:59:01 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:a1f4:7241:8e96:330d])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-65f48be65c3sm986681eaf.5.2026.01.06.06.59.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jan 2026 06:59:00 -0800 (PST)
Date: Tue, 6 Jan 2026 08:58:57 -0600
From: Corey Minyard <corey@minyard.net>
To: Michal Berger <michallinuxstuff@gmail.com>
Message-ID: <aV0jMRyN-DeuP7bg@mail.minyard.net>
References: <20260106134526.70207-1-michallinuxstuff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260106134526.70207-1-michallinuxstuff@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 06, 2026 at 02:45:26PM +0100,
 Michal Berger wrote:
 > Currently, whenever sim is restarted SEL's time_offset is reset to > the
 initial reference point, which in case of a Linux's host is it [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.48 listed in wl.mailspike.net]
X-Headers-End: 1vd8ea-0003Tp-7k
Subject: Re: [Openipmi-developer] [PATCH] [RFC] lanserv/bmc_storage: Make
 Set SEL Time persistent
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jan 06, 2026 at 02:45:26PM +0100, Michal Berger wrote:
> Currently,  whenever sim is restarted SEL's time_offset is reset to
> the initial reference point, which in case of a Linux's host is its
> btime. As a default ref, this may feel fine but in case there was an
> explicit Set SEL Time cmd sent during sim's runtime it feels
> reasonable to expect the offset to remain the same across subsequent
> resets.
> 
> The following proposal is to save the offset within the SEL file
> and slurp it in whenever BMC is reinitialized (similarly to already
> existing "last_{add,erase}_time" params).
> 
> In case host is rebooted the offset will still "break" (i.e. go
> backwards) but the discrepancy wouldn't be that big as going
> back to "pre-init" timestamp (which according to ipmitool is
> anything < 0x20000000) - I believe this case would be also
> less frequent compared to how often sim can be restarted in
> general.

Applied, thank you.

-corey

> 
> Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
> ---
>  lanserv/bmc_storage.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/lanserv/bmc_storage.c b/lanserv/bmc_storage.c
> index cb1678d9..021d0118 100644
> --- a/lanserv/bmc_storage.c
> +++ b/lanserv/bmc_storage.c
> @@ -134,6 +134,8 @@ handle_sel_time(const char *name, long val, void *cb_data)
>  	mc->sel.last_add_time = val;
>      else if (strcmp(name, "last_erase_time") == 0)
>  	mc->sel.last_erase_time = val;
> +    else if (strcmp(name, "time_offset") == 0)
> +	mc->sel.time_offset = val;
>      return ITER_PERSIST_CONTINUE;
>  }
>  
> @@ -183,6 +185,10 @@ rewrite_sels(lmc_data_t *mc)
>      if (err)
>  	goto out_err;
>  
> +    err = add_persist_int(p, mc->sel.time_offset, "time_offset");
> +    if (err)
> +	goto out_err;
> +
>      for (e = mc->sel.entries; e; e = e->next) {
>  	err = add_persist_data(p, e->data, 16, "%d", e->record_id);
>  	if (err)
> @@ -663,6 +669,8 @@ handle_set_sel_time(lmc_data_t    *mc,
>  
>      rdata[0] = 0;
>      *rdata_len = 1;
> +
> +    rewrite_sels(mc);
>  }
>  
>  /*
> -- 
> 2.43.0
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

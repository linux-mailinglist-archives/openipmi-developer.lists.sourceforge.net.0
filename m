Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA08B27F73
	for <lists+openipmi-developer@lfdr.de>; Fri, 15 Aug 2025 13:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:In-Reply-To:References:MIME-Version:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jq90KhJA4OGYBGz18+2cPMJt0fxhV/kHQ7ShPgQMiQI=; b=cpN9BkVBouJ3Z9pEgg26AGvUJQ
	0qaFYHILqdIYyK7o+eSuteSl6qJWmyxhlNGPgCqW2LnqFYWeRSAg4m/6Jf1/AimrIaC8WM3mPaZkr
	4EK86wwIyq+Q/8JtPIk/5QC03y9iRKsqShIBNf1dDLJEef1CWctaf+GlYH0FKBd34NcI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1umsqv-0003H8-OB;
	Fri, 15 Aug 2025 11:44:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mbannister@janestreet.com>) id 1umYpT-0002Lo-Ls
 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 14:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V8/HL3GM7pCZ9UNGjeVZh2PXzYCFf2e1T0waT/OI3So=; b=AhWdJoryoDlOYlZcztVkUMS8YW
 AMyCOEuAAe/RJcowK0FTQ3oJ0XlT/3pQhDC/AAjuCuZTaLE5o9izwEx3KZYJVJv+KNVS0a0DkOanQ
 ccanTZZEZjUk6UpWH+Yt+7Kbh9OyWJmOQMKenBa9rvUjIfROv+QGFxPOavBDDf1kjgcA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V8/HL3GM7pCZ9UNGjeVZh2PXzYCFf2e1T0waT/OI3So=; b=Bpy1xhOeL4Lvlksnu3c5p0qg/Z
 8Z1EZiMRnKgj8e0/hpsX0LGsl4koO3wJQw0jDBA4wTXSNdJArDiiMHDNZDMkLn/ZE1H660fihuHOw
 zubIvzIQFwW0LaDa2hzGA80S1GmR0p3oHjX8Njt0M5WjsWWeBTNOfMVFueNDCcg3DqgM=;
Received: from mxout5.mail.janestreet.com ([64.215.233.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1umYpT-0007Lx-9T for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 14:21:19 +0000
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by mxgoog2.mail.janestreet.com with esmtps (TLS1.3:TLS_AES_128_GCM_SHA256:128)
 (Exim 4.98.2) id 1umYZY-0000000BfEk-06fH
 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 10:04:52 -0400
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-3e570030cd4so22950255ab.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 14 Aug 2025 07:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=janestreet.com; s=google; t=1755180291; x=1755785091;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=V8/HL3GM7pCZ9UNGjeVZh2PXzYCFf2e1T0waT/OI3So=;
 b=xHeb8wr+e/uKrWK+mrMfevzSt5KiKttxXijTdANgaKZkh1DL+eNjHEKh0UONpS5aR0
 WOWxAwVzQS5XzO+F0Kv/4H3Q80ONcuvUfcau6EFAYrlWOPmdhnmPmx30SiecCmyjuina
 CEowE4jFwO03UC90BLkDk3O4zIEZuKWwKFhPw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=janestreet.com;
 s=waixah; t=1755180292;
 bh=V8/HL3GM7pCZ9UNGjeVZh2PXzYCFf2e1T0waT/OI3So=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc;
 b=g5hd7PibEn9CmINEfQlaILoDrGEE1ENT0hOwKoCuReDILxy6iFu+x+rGIQ9UcbeMj
 InDRsn0C8Db5GrS+Ir3lFa1URtHDLuBdT0f+o+26WdJ6F17XWtTp+xO/ZZbuKxJzHx
 4sZu086d8uOV+deFgfNhT9Sle8fgDEMhQv8hAcwBm/h7ORNBO7SgMeVYW4wjtAUhb8
 g4ZzkUMDjWH0C5Bl3wsEFHRvo/Vraq/3jTNNWrPLq5QpF+lklDnB3f9dvLYG5DhIbh
 ARDtSLry6JkIKUsYRO9WKD5jfzfeDQ+WWbS0D3O0JHn8bfq+r0ddOeA+LZNFiioFzc
 kGiGX2IKyCizw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755180291; x=1755785091;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=V8/HL3GM7pCZ9UNGjeVZh2PXzYCFf2e1T0waT/OI3So=;
 b=A2aRiTAjY+meJfa1JWt0bx+sHfAojPbXz+8Bzi2C3EIst2+GnlCw8x3yPjWG73TQY1
 MUAkTh4obP+JsX5Pg77q5OdMP8gv8eddP8kbV33/KlPTUjmDNXsgshWjVQmL6zt5HniD
 LRAaPVeqjb0rmkoIPBJeo2POaXueIUeN5xM29Z9mRYwozsEJlJgYLWi9TNRXSMwVCX59
 eIFRSpuXvDqCGtkfuX7kMs0Ttqelln7bDwgVJXMTQNhfjZXJ81dpB/4W/vnrfE74Mhgx
 Eac02oTSZ4B4Ez29pD/TQVSK78HMQg7PIxeESMlKnvHH200YP+l5NVxLrxXbiUzbSLJf
 VR8Q==
X-Gm-Message-State: AOJu0YywfI5l5uNQvgYZl/4zNMSuLhYWuceYQAq004n5b7bx35KdHzJT
 3aJmF6qb6X4UQ3DOJ2NAXGE9Og92SUKDkXnVVTZLv1TpUgAnulbUfa8Wgf7ndmgVrMVpmhal8Pf
 LKQ9n6IlR/h7e9eTF51imV7SuSh5qbMIyBVoOwlnIWdLpuXC4VtcavDX8ij6KsY8fzikWKpZmLh
 0c4SeORchERoLjny8b7PnCS1MFOgMTSKxzk6yJBcXW9AvXM/1UswHuAan1ZNe49i3zGg==
X-Gm-Gg: ASbGnctM12lSkX78v7nLUUTbarr2vfUAF62XLCPhtj5CBAbHI52SyCD5vHCWKf5Hc1E
 QEovHL6ihBm+AhJ2D6iGi7lJkQGRy3/udUURsN7NNc3mKWUqBdcLHWQ9pZ8H4xmqKUMEEHC4Z7k
 5Wy/HiCPoexK3CD7xfHxYq
X-Received: by 2002:a05:6e02:148b:b0:3e5:4dfd:31d0 with SMTP id
 e9e14a558f8ab-3e570973947mr64357825ab.19.1755180291197; 
 Thu, 14 Aug 2025 07:04:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIcpovqP6EGtcr8vi+5/SjMvkm4GNxPnBOYO+5o8jP6UozRRHeLhg/xEfgck0ssCLtronx9p8CPe3/cX5n/Yo=
X-Received: by 2002:a05:6e02:148b:b0:3e5:4dfd:31d0 with SMTP id
 e9e14a558f8ab-3e570973947mr64357285ab.19.1755180290760; Thu, 14 Aug 2025
 07:04:50 -0700 (PDT)
MIME-Version: 1.0
References: <20250814135419.616256-1-corey@minyard.net>
In-Reply-To: <20250814135419.616256-1-corey@minyard.net>
Date: Thu, 14 Aug 2025 15:04:39 +0100
X-Gm-Features: Ac12FXx7iJ-4PFuGU8YllZL8oZusD8rPnbxekYX17g_CtFfcinJUE7uPOi-sFlU
Message-ID: <CABpvmx_FO+MSJahsNRrv2KBfnb-Rib9FZa2f0w05MvZuwDhYOw@mail.gmail.com>
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Thanks for the bug report and debugging info. I think I
 know what is > going on, I've attached a patch that should hopefully fix it.
 > Basically, it looks like the BMC is alive enough that it sort o [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.215.233.18 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1umYpT-0007Lx-9T
X-Mailman-Approved-At: Fri, 15 Aug 2025 11:44:08 +0000
Subject: Re: [Openipmi-developer] [TEST PATCH] ipmi:si: Delay when an error
 is discovered in error recovery
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
From: Mark Bannister via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Mark Bannister <mbannister@janestreet.com>
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============1671888184078003481=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============1671888184078003481==
Content-Type: multipart/alternative; boundary="000000000000bf78f0063c53c1a3"

--000000000000bf78f0063c53c1a3
Content-Type: text/plain; charset="UTF-8"

> Thanks for the bug report and debugging info.  I think I know what is
> going on, I've attached a patch that should hopefully fix it.
> Basically, it looks like the BMC is alive enough that it sort of
> responds to the host, but not alive enough to actually complete a
> transaction.  The driver needs to not immediately retry in that case, it
> needs to delay a bit.
>
> It passes all my tests, but the situation you are in would be hard to
> manufacture for me.
>
> Can you try this patch?

Thanks for the super quick response, I'll try out this patch and report
back my findings.

Best regards
Mark

--000000000000bf78f0063c53c1a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">&gt; Thanks for the bug report and debugg=
ing info.=C2=A0 I think I know what is<br>&gt;=C2=A0going on, I&#39;ve atta=
ched a patch that should hopefully fix it.<br>&gt;=C2=A0Basically, it looks=
 like the BMC is alive enough that it sort of<br>&gt;=C2=A0responds to the =
host, but not alive enough to actually complete a<br>&gt;=C2=A0transaction.=
=C2=A0 The driver needs to not immediately retry in that case, it<br>&gt;=
=C2=A0needs to delay a bit.<br>&gt;=C2=A0<br>&gt;=C2=A0It passes all my tes=
ts, but the situation you are in would be hard to<br>&gt;=C2=A0manufacture =
for me.<br>&gt;=C2=A0<br>&gt;=C2=A0Can you try this patch?<div><br></div><d=
iv>Thanks for the super quick response, I&#39;ll try out this patch and rep=
ort back my findings.</div><div><br></div><div>Best regards<br>Mark</div><d=
iv><br></div></div></div>

--000000000000bf78f0063c53c1a3--


--===============1671888184078003481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1671888184078003481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1671888184078003481==--


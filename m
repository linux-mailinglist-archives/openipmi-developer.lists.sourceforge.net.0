Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0F2797CD6
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Sep 2023 21:36:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qeKnb-0002XB-Lg;
	Thu, 07 Sep 2023 19:36:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qeKnZ-0002X5-UH
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Sep 2023 19:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2oQHqV6nCRIUEokCpBVyKZhbZ5z29Ur9qqYFmLp3P6Q=; b=drZwyka1vN+DnO4Bip141XBHsa
 3Vmh7s1dpA1glMFID9X1NF4q5GqR37gkKm++BIbvUYeiOBXubR63kC5yypAyZ/rYOjcXc+Qo8LOKO
 T/SqhhXHDEnoGCWXlfUHHRrHqu+jdFb9jYXp934cgvB+GJOSdLFN9+OEiMYT10ojiHtk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2oQHqV6nCRIUEokCpBVyKZhbZ5z29Ur9qqYFmLp3P6Q=; b=F
 QCXwOsRTvf2d4bCV6X0S34g0h9+kTlJE9LALaIqHZn4t88uxGeYEYJ6mJe2i3Ufr395Aco6DNVs2P
 7xDjucb9zTpeG7IYapA9Hx+Sandcvyv4NUavYX7UAUWctT/cW6P1bvrrFqufVphi/oYxQsGH4nbRu
 fmzMj7fK0+jYuOjk=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qeKnZ-0002VC-8Q for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Sep 2023 19:36:18 +0000
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-3aa1c046659so941374b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Sep 2023 12:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694115371; x=1694720171; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:reply-to:message-id:subject:to
 :from:date:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=2oQHqV6nCRIUEokCpBVyKZhbZ5z29Ur9qqYFmLp3P6Q=;
 b=S963Wnp7iHYym0Os+UpITs/Sg+k0Vtqm6phwOVY0wj26DCtHggYTx4YS0dIVeYG7sv
 q9NXFphKEoPOrJ59DME3QIDHoBUfXyaW7jMbS25hxkl16+kg0HGfCrypKs5LljwrMDHE
 WvCJ/wr8XQTT10TK9KIRT6BNKaYgh8LvzfSeN/aUDRnfwD76fmoezGgFaNJK5FwN1R7N
 qQ57parJUC9HcIqfSMENaRNPeFj3BXB5u9cs+6p4XIYYxeBt++EU6QhhlqRARnrzh2Mn
 ki010KwtHtv3tjctKNajCVMbsK2Xya4tC4iHoWlcxR39nxHQHNPJiuPYOXtj9RyGiO3k
 OX2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694115371; x=1694720171;
 h=content-disposition:mime-version:reply-to:message-id:subject:to
 :from:date:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2oQHqV6nCRIUEokCpBVyKZhbZ5z29Ur9qqYFmLp3P6Q=;
 b=fjiGsqOuA0M2UkvEIFpgjQczSUYqj055Lae/jsnKPdH2fJheHq95QUBhFIHHSPDs4f
 lMxO3OrxZ6hEtYrZzrpemWu4/7LkzB8YuwaqaFm366CnQySsRsnVUXWgDp/mnip14g4d
 yhCLL/qjHZLu3J6coVfKSVog5oIwscmJkK89/1BeN6kjfoRwPEvXrx7SXd2/kQacJPC1
 n3u70JPiJyMgenNnL/La4b+/E9ipZM1oGZNMRgSPGZgn/MjCOEIqySBB3bG/+27WaGwG
 NlSVvgM4F1Q36boDD74V533c96DKYgZySfNlZ1Sp5vqv08VBrquZzg1sqVrchv4TfkND
 MJ0g==
X-Gm-Message-State: AOJu0Yzl8A2pW+nWZy5oe83TVdThhBAAQ3eavtbv2vY5Jc/BdfLI3icz
 /Us6ICO/EYc4GnUA7Vcc5aok6TFGYg==
X-Google-Smtp-Source: AGHT+IFD9VPTeKjgN5cWtGpLzniZvO3fd3DC6ghcf9NLXvgM5TVoToHx9zskKU6M2u9Lr5ShFsq7+g==
X-Received: by 2002:a05:6808:1289:b0:3a8:8b74:fd44 with SMTP id
 a9-20020a056808128900b003a88b74fd44mr756238oiw.3.1694115371363; 
 Thu, 07 Sep 2023 12:36:11 -0700 (PDT)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 bc23-20020a056808171700b003a747ea96a8sm25180oib.43.2023.09.07.12.36.10
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Sep 2023 12:36:10 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:fc86:9bd3:a892:fb3a])
 by serve.minyard.net (Postfix) with ESMTPSA id A2CBE1800BD
 for <openipmi-developer@lists.sourceforge.net>;
 Thu,  7 Sep 2023 19:36:09 +0000 (UTC)
Date: Thu, 7 Sep 2023 14:36:08 -0500
From: Corey Minyard <minyard@acm.org>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <ZPomKG1g/6ikcyaL@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It's been over a year since 2.0.33. Not much has changed,
 really, a few small things for improved usability. This has some required
 changes for gensio testing of ipmi SOL. Probably worth upgrading if you can.
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qeKnZ-0002VC-8Q
Subject: [Openipmi-developer] OpenIPMI 2.0.34 Released
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It's been over a year since 2.0.33. Not much has changed, really, a few small things for improved usability.

This has some required changes for gensio testing of ipmi SOL.

Probably worth upgrading if you can.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

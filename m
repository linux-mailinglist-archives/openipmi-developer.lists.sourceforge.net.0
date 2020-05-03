Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 532DB1C2F85
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 May 2020 23:42:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jVMNu-0005Bk-2N; Sun, 03 May 2020 21:42:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1jVMNt-0005BZ-9s
 for openipmi-developer@lists.sourceforge.net; Sun, 03 May 2020 21:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WYg40TLk3KADJiyif1yUUKuz9+nrJ8NqElcSmLLhB0k=; b=Reu61x+pVx/q5YP6iM6nPxCNKh
 9UOK46Y56B/Tlu7qEgacDOp+VUoA7q3RNhustcQaBXZySItPsuwyFejqHHNsBTo8KW6rPavfaCEj9
 Cbz1werDgOTy7S3SIOKmZk28L9JdirCKp0ZbrTtFjj0/k1dz5ORvYXlk0W37DRnaEvEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WYg40TLk3KADJiyif1yUUKuz9+nrJ8NqElcSmLLhB0k=; b=JWVvIiKG35ClGMLIiXOGe7RcNb
 MzdrCEk6pfjAt3dBQbpCAwdGk8j9Kor4cxt5ZjK+B5aCp5yn0bh52UdCVGh1D/aQa3IAa9XbXJN5Q
 QNwAS3sWuSe9ChV0W2BouRAzu7zwvhuqBapkgYIpWLrlAgLtCLK0gUR1fGF9W0c3UZmI=;
Received: from mail-yb1-f196.google.com ([209.85.219.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVMNp-004SiV-BG
 for openipmi-developer@lists.sourceforge.net; Sun, 03 May 2020 21:42:49 +0000
Received: by mail-yb1-f196.google.com with SMTP id d197so8196793ybh.6
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 03 May 2020 14:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WYg40TLk3KADJiyif1yUUKuz9+nrJ8NqElcSmLLhB0k=;
 b=BDxjoahiJohx54nEmH9pDQb8AOe7cXejqBbol5vX8jZ8SdcuZzYtuhDTjNsGTHWe52
 gzHb12xTxy/H/oYB8bmRs6D6zEeBpCEgcUsPVEf2USpC3vNDaanFRzesBWhtf/fkri0S
 C7P2+vb04obC/rRDYmVQNiZY3Qe21BVYHFvq8TJnEVyeQ2/+rtl3uWP6TlYIloBGpKAD
 GwqMHQmCasLEbscdoQYV6HPp98lcxVyuCdkq3bOPZPefNSUbiV0/dIFpm1pYmbaNZLVi
 9HIFlHPIKsWWDAQS/6PHl6jDagceFo1bTMU8/DTR1wyxKZWKBgeXJ4XouQMDjJKhCh++
 9R6A==
X-Gm-Message-State: AGi0PuYKjzM9kbGOBVzTrib4VOfq7+81gxugRgdLmVCZ4nYQzNLWBdCX
 sAf0B34WHiQLISftGkKLAlYwN/k=
X-Google-Smtp-Source: APiQypIaJB2V1R3yN4okOSQIUQdfXjuVW2kXux3Do0/BFcV5FP8EpdLt2iu8wdRoFonVOD7wWRvOpA==
X-Received: by 2002:a9d:3988:: with SMTP id y8mr10608108otb.352.1588521379608; 
 Sun, 03 May 2020 08:56:19 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y131sm1651023oie.39.2020.05.03.08.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 May 2020 08:56:19 -0700 (PDT)
Received: (nullmailer pid 22470 invoked by uid 1000);
 Sun, 03 May 2020 15:56:18 -0000
Date: Sun, 3 May 2020 10:56:18 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Message-ID: <20200503155618.GA22437@bogus>
References: <20200430211054.30466-1-andre.przywara@arm.com>
 <20200430211054.30466-8-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211054.30466-8-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.196 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVMNp-004SiV-BG
Subject: Re: [Openipmi-developer] [PATCH v3 7/8] dt-bindings: ipmi: Convert
 IPMI-SMIC bindings to json-schema
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
Cc: devicetree@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, 30 Apr 2020 22:10:53 +0100, Andre Przywara wrote:
> Convert the generic IPMI controller bindings to DT schema format
> using json-schema.
> 
> The device_type property is deprecated for most node per the DT spec,
> but at least the Linux driver matches on it, so I keep it in.
> 
> The Linux driver parses for some additional and optional properties,
> but there are no in-tree users. Let's allow extra properties to cover
> any other users.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 --------
>  .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 63 +++++++++++++++++++
>  2 files changed, 63 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> 

Applied, thanks.

Rob


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

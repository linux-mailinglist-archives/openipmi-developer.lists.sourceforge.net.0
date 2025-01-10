Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C50C1A09A27
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Jan 2025 19:49:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tWK4f-0003zq-UJ;
	Fri, 10 Jan 2025 18:49:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tWK4c-0003zj-Qd
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 18:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6JOagae3dW1lR5FIp/nsWts7K+C85jj/Xatk2ej+x4U=; b=OPL3O3XGyezPNgHQu5u9Y4/uEu
 SFAT5FaFrJ6ff4+4LHel7isYDOlbQRuhwv8AQtmR7EMKcwWnF9j+RWAJ6bLRr9bAdeHzl3viWbalN
 frgPULGMw1oKMpBpM9UX+JDNg2GzaI4vKGsOnuet9A634aHon8sI3jfJmSnuQAWI6Igk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6JOagae3dW1lR5FIp/nsWts7K+C85jj/Xatk2ej+x4U=; b=jN58pZ6YuXxna7X7cgrRqRpRNi
 z3znSdwPF5M7ZSDyLlvpqyzKOngxQlEq7r0/SSm7rz30qzp6QssHlEi7ZOmM/btqOWrlPIO6FprWL
 cxnjTuhnsgrbFsGwbMbmJV8znmLq2zhZiBUaCZhVYAF3ig+dB30YzQOhIHfLgUomxD8k=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tWK4b-0003Wn-BD for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 18:49:34 +0000
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-3eb7ecc3c54so1205794b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 10 Jan 2025 10:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1736534962; x=1737139762;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6JOagae3dW1lR5FIp/nsWts7K+C85jj/Xatk2ej+x4U=;
 b=flPeXjYDibaWeTqo63/43xwPVw9tcgoFkJDTgzFUdWHWqMd6VoUMItuJGXSLdyftES
 zEvxI87PA8Sfqcg/oIgOhNrSVMWDVbGbMBSHGwSuRNwzAawUv675XGbRnD/x60mfBDhP
 AYKj+p8Pg1hZkxGRB4PIFsN1pUItgdi4skCoBSE+nAtnaZjyJYNsuaF+gMYnIY7jvABQ
 jrYjCIAfH8/t+On3ig+n0SJyFbFEYP3L5IiaVJ6MrgJVV4fRquTsbaBVhBA0UVc2E0Fq
 NBS4rGD6jSBBuOYD3nw03uL/IGVkXbWMouUknKUp4HJmAth+QX7wsIvN5CjwfqPYqDcu
 6izw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736534962; x=1737139762;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6JOagae3dW1lR5FIp/nsWts7K+C85jj/Xatk2ej+x4U=;
 b=ma6wPdI/S7x+28LU1ia7eA+NR6L2+wf01enEZJeRZkrWAwOspOSyJCx7v3CMGqv5Fx
 zqAwcfE9vQsIZfswiPJsoSkSzzoybKjJ2isY5roLu/FJ1INdEmBaoaBjA1N4ggC5fTSo
 2hPUKCn9R/cAwcIWvcbmyp1QZfA30xVEsapapVFRwY2j+RSWu1GU5BMGF+2T2BemEEes
 zmDU9Vkb22S0h0frIUA0+Mu89diplxvyf3yDO4MkpGrf2h4yDDUzAunwNIs9j70QWSHe
 XWsHiNlMJwigwIum33DEq/MWGGcQ44FO7Ea7fyYBca3w9LS1H3mV5BVUqJ5+65UQjlFT
 kVnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWkmsMrwB4veN/c31oUqx3cOFPFh4l6IQYbRrm4Id5FURcwamuf7064pvEmkamTOUpdz5H2y9uTR24ULBquvavJyEM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwovqnwJ8xFMb4mGd5RsUZg9IFkOiuvHS2KC3mLZZ0GjFRfWxwA
 jMYJBbdoT4pbioVk5SNMUlB4q17GBF2C9M4Bn82/6iAjMdByxZQDYlybyzslnnEdkXtq6aouyRr
 QZplxIw==
X-Gm-Gg: ASbGncsBvAsfp4LyZFqYcKAjuE1LRxT7mob0qGunMjDW0rfMUh0t2qbaXbJDjmN+8r4
 KjV8h2I2kbuleTSuPEn1oSS6IsMHUYqs+QKIi2agsItMcz0t2lXHYPZL0iLWUIdrvc7XcrtQtHq
 KLXldthjkZ1qTYxYlrV+WFXM7GzoKamywGNorWtIJsvBQtFjYRKVHOETkb9gKuTr2icZIHYnQua
 c/woGP+fRZ6xt0HQqIYJrNvmSU/RixQl1sbRoJDBth1ALZkBYqOw7umUsak
X-Google-Smtp-Source: AGHT+IGB0PKOvj7h3ojvbM7pAuyzSK65qG5xXrDh822hP3luACM/ibUleffXIwmcp6JhMd8+ciJOnw==
X-Received: by 2002:a05:6870:a691:b0:29d:c999:b90c with SMTP id
 586e51a60fabf-2aa065118c4mr2126228fac.1.1736531604651; 
 Fri, 10 Jan 2025 09:53:24 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:1850:cb65:a40d:8a99])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-2ad804af3b6sm1080167fac.4.2025.01.10.09.53.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2025 09:53:24 -0800 (PST)
Date: Fri, 10 Jan 2025 11:53:18 -0600
From: Corey Minyard <corey@minyard.net>
To: Rob Herring <robh@kernel.org>
Message-ID: <Z4Fejhd_qPfuVLiw@mail.minyard.net>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-3-ninad@linux.ibm.com>
 <20250110160713.GA2952341-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250110160713.GA2952341-robh@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 10, 2025 at 10:07:13AM -0600, Rob Herring wrote:
 > On Wed, Jan 08, 2025 at 10:36:30AM -0600, Ninad Palsule wrote: > > Add
 device tree binding document for the IPMB device interface. > > Th [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.175 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.175 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.175 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tWK4b-0003Wn-BD
Subject: Re: [Openipmi-developer] [PATCH v3 02/10] bindings: ipmi: Add
 binding for IPMB device intf
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, ratbert@faraday-tech.com,
 minyard@acm.org, netdev@vger.kernel.org, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, Ninad Palsule <ninad@linux.ibm.com>,
 andrew+netdev@lunn.ch, edumazet@google.com, linux-aspeed@lists.ozlabs.org,
 kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jan 10, 2025 at 10:07:13AM -0600, Rob Herring wrote:
> On Wed, Jan 08, 2025 at 10:36:30AM -0600, Ninad Palsule wrote:
> > Add device tree binding document for the IPMB device interface.
> > This device is already in use in both driver and .dts files.
> > 
> > Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> > ---
> >  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 44 +++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> > new file mode 100644
> > index 000000000000..a8f46f1b883e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> > @@ -0,0 +1,44 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: IPMB Device
> > +
> > +description: IPMB Device interface to receive request and send response

First, thank you, this does need to be documented.

> 
> IPMB is not defined anywhere.

Indeed.  At least reference the spec, but better do that and provide a
basic description.

> 
> Which side of the interface does this apply to? How do I know if I have 
> an ipmb-dev?
> 
> This document needs to stand on its own. Bindings exist in a standalone 
> tree without kernel drivers or docs.

At least to someone who knows what IPMB is, it's pretty clear that you
are saying "The i2c device this node is in is on an IPMB bus." However,
to someone who is not, this is all a foreign language.  This definitely
needs better documentation.

Why do you have a "reg" property?  I don't see it referenced in the
driver.  I assume that's the I2C address, but that's going to be the
same as what's in the containing I2C node.  I don't think it's
necessary.

-corey

> 
> > +
> > +maintainers:
> > +  - Ninad Palsule <ninad@linux.ibm.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - ipmb-dev
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  i2c-protocol:
> > +    description:
> > +      Use I2C block transfer instead of SMBUS block transfer.
> > +    type: boolean
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ipmb-dev@10 {
> > +            compatible = "ipmb-dev";
> > +            reg = <0x10>;
> > +            i2c-protocol;
> > +        };
> > +    };
> > -- 
> > 2.43.0
> > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

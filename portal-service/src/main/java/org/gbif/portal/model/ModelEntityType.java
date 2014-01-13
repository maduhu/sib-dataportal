/***************************************************************************
 * Copyright (C) 2006 Global Biodiversity Information Facility Secretariat.
 * All Rights Reserved.
 * The contents of this file are subject to the Mozilla Public
 * License Version 1.1 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of
 * the License at http://www.mozilla.org/MPL/
 * Software distributed under the License is distributed on an "AS
 * IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * rights and limitations under the License.
 ***************************************************************************/
package org.gbif.portal.model;

import java.io.Serializable;


/**
 * Enumerated type for the reuse across methods supporting multiple entity types.
 * 
 * @author trobertson
 * @author dmartin
 */
public class ModelEntityType extends IntegerEnumType implements Serializable {

  private static final long serialVersionUID = -7477596072454346717L;

  public static final ModelEntityType ALL = new ModelEntityType("all", 0);
  public static final ModelEntityType TAXON = new ModelEntityType("taxon", 1);
  public static final ModelEntityType COUNTRY = new ModelEntityType("country", 2);
  // Department model entity type used in colombian department list by sib colombia
  public static final ModelEntityType DEPARTMENT = new ModelEntityType("department", 8);
  // County model entity type used in colombian county list by sib colombia
  public static final ModelEntityType COUNTY = new ModelEntityType("county", 9);
  // Paramo model entity type used in colombian paramo list by sib colombia
  public static final ModelEntityType PARAMO = new ModelEntityType("paramo", 10);
//Paramo model entity type used in colombian marine zone list by sib colombia
 public static final ModelEntityType MARINE_ZONE = new ModelEntityType("marine_zone", 11);
  public static final ModelEntityType DATA_PROVIDER = new ModelEntityType("dataProvider", 3);
  public static final ModelEntityType DATA_RESOURCE = new ModelEntityType("dataResource", 4);
  public static final ModelEntityType RESOURCE_NETWORK = new ModelEntityType("resourceNetwork", 5);
  public static final ModelEntityType HOME_COUNTRY = new ModelEntityType("homeCountry", 6);

  public ModelEntityType() {
    // default constructor, required by hibernate
  }

  private ModelEntityType(String name, int value) {
    super(name, Integer.valueOf(value));
  }

  /**
   * Utility method to return the enumerated instance for the specified value
   * 
   * @param value The enumerated name integer value
   * @return The enumerated instance if found or null
   */
  public static final ModelEntityType getModelEntityType(int value) {
    if (value == TAXON.getValue()) {
      return TAXON;
    } else if (value == COUNTRY.getValue()) {
      return COUNTRY;
    } else if (value == DEPARTMENT.getValue()) {
      // Department model entity type used in colombian department list by sib colombia
      return DEPARTMENT;
    }else if (value == COUNTY.getValue()) {
        // County model entity type used in colombian county list by sib colombia
        return COUNTY;
    }else if (value == PARAMO.getValue()) {
        // Paramo model entity type used in colombian paramo list by sib colombia
        return PARAMO;
    }else if (value == MARINE_ZONE.getValue()) {
        // Marine zone model entity type used in colombian marine zone list by sib colombia
        return MARINE_ZONE;
    }else if (value == DATA_PROVIDER.getValue()) {
      return DATA_PROVIDER;
    } else if (value == DATA_RESOURCE.getValue()) {
      return DATA_RESOURCE;
    } else if (value == RESOURCE_NETWORK.getValue()) {
      return RESOURCE_NETWORK;
    } else if (value == ALL.getValue()) {
      return ALL;
    } else if (value == HOME_COUNTRY.getValue()) {
      return HOME_COUNTRY;
    }
    return null;
  }

  /**
   * Utility method to return the enumerated instance for the specified name
   * 
   * @param name The enumerated name value
   * @return The enumerated instance if found or null
   */
  public static final ModelEntityType getModelEntityType(String name) {
    if (name != null) {
      if (name.equalsIgnoreCase(TAXON.getName())) {
        return TAXON;
      } else if (name.equalsIgnoreCase(COUNTRY.getName())) {
        return COUNTRY;
      } else if (name.equalsIgnoreCase(DEPARTMENT.getName())) {
        // Department model entity type used in colombian department list by sib colombia
        return DEPARTMENT;
      } else if (name.equalsIgnoreCase(COUNTY.getName())) {
        // County model entity type used in colombian county list by sib colombia
        return COUNTY;
      }else if (name.equalsIgnoreCase(PARAMO.getName())) {
          // Paramo model entity type used in colombian paramo list by sib colombia
        return PARAMO;
      }else if (name.equalsIgnoreCase(MARINE_ZONE.getName())) {
          // MARINE ZONE model entity type used in colombian marine zone list by sib colombia
        return MARINE_ZONE;
      }else if (name.equalsIgnoreCase(DATA_PROVIDER.getName())) {
        return DATA_PROVIDER;
      } else if (name.equalsIgnoreCase(DATA_RESOURCE.getName())) {
        return DATA_RESOURCE;
      } else if (name.equalsIgnoreCase(RESOURCE_NETWORK.getName())) {
        return RESOURCE_NETWORK;
      } else if (name.equalsIgnoreCase(ALL.getName())) {
        return ALL;
      } else if (name.equalsIgnoreCase(HOME_COUNTRY.getName())) {
        return HOME_COUNTRY;
      }
    }
    return null;
  }
}